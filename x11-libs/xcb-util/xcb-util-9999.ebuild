# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit git x-modular

DESCRIPTION="X C-language Bindings sample implementations"
HOMEPAGE="http://xcb.freedesktop.org/"
EGIT_REPO_URI="git://anongit.freedesktop.org/git/xcb/util"

LICENSE="X11"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sh ~sparc ~x86 ~x86-fbsd"
IUSE="test"

RDEPEND=">=x11-libs/libxcb-1"
DEPEND="${RDEPEND}
	>=dev-util/gperf-3.0.1
	dev-util/pkgconfig
	x11-proto/xproto
	test? ( >=dev-libs/check-0.9.4 )"

pkg_postinst() {
	x-modular_pkg_postinst

	echo
	ewarn "Library names have changed since earlier versions of xcb-util;"
	ewarn "you must rebuild packages that have linked against <xcb-util-0.3.0."
	einfo "Using 'revdep-rebuild' from app-portage/gentoolkit is highly"
	einfo "recommended."
	epause 5
}
