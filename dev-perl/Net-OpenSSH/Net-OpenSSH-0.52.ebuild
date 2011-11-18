# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=SALVA
MODULE_VERSION=0.52
inherit perl-module

DESCRIPTION="Net::OpenSSH, Perl wrapper for OpenSSH secure shell client"

SLOT="0"
KEYWORDS="~amd64"
IUSE="sftp"

RDEPEND="virtual/perl-Test-Simple
	     dev-perl/IO-Tty
		 sftp? ( dev-perl/Net-SFTP-Foreign )"
DEPEND="${RDEPEND}"
