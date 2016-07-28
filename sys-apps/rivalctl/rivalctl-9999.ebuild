# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
#$Id$

EAPI=5

DESCRIPTION="Command line tool to configure the SteelSeries Rival mouse."

HOMEPAGE="https://github.com/andrepl/rivalctl"
EGIT_REPO_URI="https://github.com/andrepl/rivalctl.git"

LICENSE="GPLv2"
SLOT="0"
KEYWORDS=""
IUSE=""

# This is probably missing things
RDEPEND=""
DEPEND="${RDEPEND}"
PYTHON_COMPAT=( python{2_6, 2_7} )

src_unpack() {
	git clone $EGIT_REPO_URI ${S}
}

src_install() {
	python2 setup.py install --root ${D}
}
