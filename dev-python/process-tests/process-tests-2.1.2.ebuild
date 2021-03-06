# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} pypy3 )

inherit distutils-r1

DESCRIPTION="Tools for testing processes"
HOMEPAGE="https://github.com/ionelmc/python-process-tests https://pypi.org/project/process-tests/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ~loong ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux ~x64-macos"

# There are no tests at all, under TODO
# see https://pypi.org/project/process-tests/2.0.2/
RESTRICT="test"

DOCS=( README.rst )
