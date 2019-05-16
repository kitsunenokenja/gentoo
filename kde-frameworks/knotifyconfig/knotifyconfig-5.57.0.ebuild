# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

KDE_TEST="false"
inherit kde5

DESCRIPTION="Framework for configuring desktop notifications"
LICENSE="LGPL-2+"
KEYWORDS="amd64 ~arm ~arm64 ~x86"
IUSE="phonon"

DEPEND="
	$(add_frameworks_dep kcompletion)
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kio)
	$(add_qt_dep qtdbus)
	$(add_qt_dep qtgui)
	$(add_qt_dep qtwidgets)
	phonon? ( media-libs/phonon[qt5(+)] )
"
RDEPEND="${DEPEND}"
