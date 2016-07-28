# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils

DESCRIPTION="A Tox client written in Vala/GTK+3"
HOMEPAGE="https://ricin.im/"
SRC_URI="https://github.com/RicinApp/Ricin/archive/v0.2.3.tar.gz"

LICENSE="GPLv3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-lang/vala:0.32
	dev-lang/python
	>=dev-libs/json-glib-1.0
	dev-libs/glib:2
	dev-util/intltool
	>=x11-libs/libnotify-0.7.6
	>=net-libs/libsoup-2.4
	net-libs/tox
	x11-libs/gtk+:3
"
RDEPEND="${DEPEND}"

src_unpack() {
	if [ "${A}" != "" ]; then
		unpack ${A}
		cd ${S}
		mv Ricin-0.2.3 ./ricin-0.2.3
	fi
}
src_compile() {
	export VALAC=/usr/bin/valac-0.32
	./waf configure --prefix=${D}/usr
	./waf build
}
src_install() {
	./waf install
	# The name of the binary is capitalised by default.
	mv ${D}/usr/bin/Ricin ${D}/usr/bin/ricin
}

