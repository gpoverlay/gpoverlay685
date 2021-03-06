# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

VERSION="Eclipse Temurin JRE ${PV}"
JAVA_HOME="${EPREFIX}/opt/${PN}-${SLOT}"
PATH="\${JAVA_HOME}/bin"
ROOTPATH="\${JAVA_HOME}/bin"
LDPATH="\${JAVA_HOME}/lib/:\${JAVA_HOME}/lib/server/"
MANPATH="\${JAVA_HOME}/man"
PROVIDES_TYPE="JRE"
PROVIDES_VERSION="${SLOT}"
BOOTCLASSPATH=""
GENERATION="2"
ENV_VARS="JAVA_HOME PATH ROOTPATH LDPATH MANPATH"
