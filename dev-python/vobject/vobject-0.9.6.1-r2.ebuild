# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="Python package for parsing and generating vCard and vCalendar files"
HOMEPAGE="https://eventable.github.io/vobject/
	https://pypi.org/project/vobject/
	https://github.com/eventable/vobject"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 ~riscv x86"
IUSE=""

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/python-dateutil-2.4.0[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

DOCS=( ACKNOWLEDGEMENTS.txt README.md )

python_test() {
	"${EPYTHON}" tests.py || die "Testing failed under ${EPYTHON}"
}
