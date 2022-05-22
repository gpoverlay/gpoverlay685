# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=AKREAL
DIST_VERSION=0.23
inherit perl-module

DESCRIPTION="Run Perl program as a daemon process"

SLOT="0"
KEYWORDS="amd64 ppc ppc64 x86"
IUSE="minimal"

RDEPEND="
	!minimal? ( dev-perl/Proc-ProcessTable )
"
BDEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
"
