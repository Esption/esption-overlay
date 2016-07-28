# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Virtual for the programming language Rust from Mozilla."
HOMEPAGE="http://www.rust-lang.org/"
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="vim-syntax emacs binary"

DEPEND="vim-syntax? ( app-vim/rust-mode )
	emacs? ( app-emacs/rust-mode )
	binary? ( dev-lang/rust-bin )
	!binary? ( dev-lang/rust )
	dev-util/cargo
"
RDEPEND="${DEPEND}"

