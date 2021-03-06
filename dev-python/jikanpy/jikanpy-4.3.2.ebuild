# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="Python wrapper for jikan.moe API"
HOMEPAGE="https://pypi.org/project/jikanpy/"
SRC_URI="https://github.com/abhinavk99/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/simplejson[${PYTHON_USEDEP}]
"
BDEPEND="test? (
	dev-python/pytest-asyncio[${PYTHON_USEDEP}]
	dev-python/vcrpy[${PYTHON_USEDEP}]
)"

distutils_enable_tests pytest
distutils_enable_sphinx docs \
	dev-python/alabaster
