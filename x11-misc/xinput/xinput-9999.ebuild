# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-misc/xinput/xinput-1.3.0.ebuild,v 1.1 2008/01/10 08:01:04 dberkholz Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

MODULE="app"
inherit x-modular

DESCRIPTION="Utility to set XInput device parameters"
LICENSE="as-is"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""
RDEPEND=">=x11-libs/libXi-9999"
DEPEND="${RDEPEND}
	>=x11-proto/inputproto-9999"
