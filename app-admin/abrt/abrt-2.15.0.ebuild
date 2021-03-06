# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{8..10} )

inherit autotools python-single-r1 tmpfiles xdg

DESCRIPTION="Automatic bug detection and reporting tool"
HOMEPAGE="https://github.com/abrt/abrt/wiki/ABRT-Project https://github.com/abrt/abrt"
SRC_URI="https://github.com/${PN}/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="selinux test"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RESTRICT="!test? ( test )"

DEPEND="${PYTHON_DEPS}
	>=dev-libs/glib-2.56:2
	>=dev-libs/libreport-2.13.0:=[gtk,python]
	dev-libs/libxml2:2
	>=gnome-base/gsettings-desktop-schemas-3.15.1
	net-libs/libsoup:2.4
	sys-apps/dbus
	sys-apps/systemd:0=
	sys-auth/polkit
	sys-libs/libcap
	sys-fs/inotify-tools
	x11-libs/gtk+:3
	x11-libs/libnotify
"
RDEPEND="${DEPEND}
	acct-user/abrt
	acct-group/abrt
	app-arch/cpio
	app-arch/rpm[python,${PYTHON_SINGLE_USEDEP}]
	dev-libs/elfutils
	dev-libs/json-c:0=
	sys-apps/util-linux
	>=sys-devel/gdb-7
	$(python_gen_cond_dep '
			dev-libs/satyr[${PYTHON_USEDEP}]
			dev-python/argcomplete[${PYTHON_USEDEP}]
			dev-python/argh[${PYTHON_USEDEP}]
			dev-python/humanize[${PYTHON_USEDEP}]
	')
"
BDEPEND="
	$(python_gen_cond_dep 'dev-python/python-systemd[${PYTHON_USEDEP}]')
	test? (
		$(python_gen_cond_dep 'dev-python/pytest[${PYTHON_USEDEP}]')
	)
	app-text/asciidoc
	app-text/xmlto
	>=dev-util/intltool-0.35.0
	virtual/pkgconfig
	>=sys-devel/gettext-0.17
"

pkg_setup() {
	python-single-r1_pkg_setup
}

src_prepare() {
	python_fix_shebang .
	default

	# Install under proper directory
	sed -i -e 's:dbusabrtdocdir = ${datadir}/doc/abrt-dbus-${VERSION}/html:dbusabrtdocdir = ${datadir}/doc/${PF}/html:' doc/problems-service/Makefile.am || die

	# Ensure this works for systems with and without /usr merge
	sed -i -e "s:/usr/bin/bash:$(which bash):" init-scripts/abrtd.service || die

	# Fix hardcoded "pytest-3"
	sed -i -e "s:pytest-3:pytest:" \
		configure.ac src/python-problem/tests/Makefile.am src/cli/test || die

	# pyhook test is sensitive to the format of python's error messages, and
	# fails with certain python versions
	sed -e '/pyhook.at/ d' \
		-i tests/Makefile.* tests/testsuite.at || die "sed remove pyhook tests failed"
	./gen-version || die # Needed to be run before autoreconf
	eautoreconf
}

src_configure() {
	myeconfargs=(
		--libdir="${EPREFIX}/usr/$(get_libdir)"
		--localstatedir="${EPREFIX}/var"
		--without-bodhi
		# package breaks due to not finding libreport-web with bodhi plugin enabled
		--without-rpm
		$(usex selinux "" "--without-selinux")
		--with-python3
		--without-pythondoc
		# package breaks due to no sphinx-build-3
		$(use_with test pythontests)
	)

	econf "${myeconfargs[@]}"
}

src_install() {
	default
	python_optimize

	# /var/spool/abrt is created by dev-libs/libreport
	diropts -m 700 -o abrt -g abrt
	keepdir /var/spool/abrt-upload

	find "${D}" -name '*.la' -delete || die

	newinitd "${FILESDIR}/${PN}-2.0.12-r1-init" abrt
	newconfd "${FILESDIR}/${PN}-2.0.12-r1-conf" abrt

	# Drop empy dirs, handled by tmpfiles
	rm -r "${ED}"/var/run/ || die
}

pkg_postinst() {
	xdg_pkg_postinst
	tmpfiles_process abrt.conf
}
