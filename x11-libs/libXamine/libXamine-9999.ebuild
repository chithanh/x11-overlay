# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit x-modular

EGIT_REPO_URI="git://anongit.freedesktop.org/git/xcb/libXamine"

DESCRIPTION="Protocol analysis library for the X Window System protocol"
HOMEPAGE="http://xcb.freedesktop.org/"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd"
LICENSE="LGPL-2.1"
RDEPEND="x11-libs/libxcb"
DEPEND="${RDEPEND}
	>=x11-proto/xcb-proto-9999"

