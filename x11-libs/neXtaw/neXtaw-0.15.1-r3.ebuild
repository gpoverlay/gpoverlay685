# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Athena Widgets with N*XTSTEP appearance"
HOMEPAGE="http://siag.nu/neXtaw/"
SRC_URI="http://siag.nu/pub/neXtaw/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ppc ppc64 ~riscv sparc x86 ~amd64-linux ~x86-linux ~ppc-macos ~sparc-solaris"

RDEPEND="
	x11-base/xorg-proto
	x11-libs/libICE
	x11-libs/libXext
	x11-libs/libXt
	x11-libs/libX11
	x11-libs/libSM
	x11-libs/libXmu
	x11-libs/libxkbfile
	x11-libs/libXpm
	!<x11-libs/neXtaw-0.15.1-r1"
DEPEND="${RDEPEND}"

src_configure() {
	econf --disable-static
}

src_install() {
	default
	find "${ED}" -name '*.la' -delete || die
}
