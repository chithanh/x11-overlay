# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-drivers/xf86-video-i810/xf86-video-i810-2.0.0.ebuild,v 1.1 2007/04/21 05:56:37 joshuabaergen Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org driver for Intel cards"

KEYWORDS="~amd64 ~ia64 ~x86 ~x86-fbsd"
IUSE="dri"

RDEPEND=">=x11-base/xorg-server-1.5
	x11-libs/libXvMC"
DEPEND="${RDEPEND}
	>=x11-proto/dri2proto-1.99.3
	x11-proto/fontsproto
	x11-proto/randrproto
	x11-proto/renderproto
	x11-proto/xineramaproto
	x11-proto/glproto
	x11-proto/xextproto
	x11-proto/xproto
	dri? ( 	x11-proto/xf86driproto
			>=x11-libs/libdrm-2.4.6
			x11-libs/libX11 )"

CONFIGURE_OPTIONS="$(use_enable dri)"
