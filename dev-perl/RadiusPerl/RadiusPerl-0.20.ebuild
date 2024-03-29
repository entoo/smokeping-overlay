# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="0"
inherit perl-module

DESCRIPTION="Communicate with a Radius server from Perl"
AUTHOR="MANOWAR"
HOMEPAGE="http://search.cpan.org/~manowar/"
SRC_URI="mirror://cpan/authors/id/${AUTHOR:0:1}/${AUTHOR:0:2}/${AUTHOR}/${P}.tar.gz"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~hppa ~sparc ~x86"
IUSE=""

SRC_TEST="do"

export OPTIMIZE="$CFLAGS"
DEPEND=">=perl-core/Digest-MD5-2.20
		>=perl-core/IO-1.12
		>=dev-perl/Data-HexDump-0.02
		dev-lang/perl"

RDEPEND="${DEPEND}"

S=${WORKDIR}/Authen-Radius-${PV}

src_unpack() {
	perl-module_src_unpack
	sed -i "s:/etc/raddb:${D}/etc/raddb:" "${S}/install-radius-db.PL"
	mkdir -p "${D}/etc/raddb"
	cd "${S}"
	epatch "${FILESDIR}"/dictionary.cisco.ssg.patch
}

src_install()
{
	perl-module_src_install || die "perl-module_src_install failed"
	insinto /etc/raddb
	newins raddb/dictionary dictionary
	newins raddb/dictionary.xtradius dictionary.xtradius
	newins raddb/dictionary.shiva dictionary.shiva
	newins raddb/dictionary.tunnel dictionary.tunnel
	newins raddb/dictionary.versanet dictionary.versanet
	newins raddb/dictionary.cisco dictionary.cisco
	newins raddb/dictionary.livingston dictionary.livingston
	newins raddb/dictionary.ascend dictionary.ascend
	newins raddb/dictionary.usr dictionary.usr
	newins raddb/dictionary.quintum dictionary.quintum
	newins raddb/dictionary.compat dictionary.compat
}
