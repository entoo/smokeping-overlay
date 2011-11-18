# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=SALVA
MODULE_VERSION=1.67
inherit perl-module

DESCRIPTION="Net::SFTP::Foreign, Secure File Transfer Protocol client"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="perl-core/ExtUtils-MakeMaker
	     perl-core/Test-Simple"
DEPEND="${RDEPEND}"
