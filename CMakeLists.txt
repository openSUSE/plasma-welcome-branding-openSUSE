# SPDX-License-Identifier: GPL-3.0-or-later
cmake_minimum_required(VERSION 3.16)
project(plasma-welcome-branding-openSUSE VERSION 1.0.0 LANGUAGES NONE)

if(NOT CMAKE_INSTALL_DATADIR)
    set(CMAKE_INSTALL_DATADIR "share")
endif()

set(PLASMA_WELCOME_DATA_DIR "${CMAKE_INSTALL_DATADIR}/plasma/plasma-welcome")

install(
    FILES
        qml/01-openSUSE.qml
        qml/02-openSUSE-Social-Media.qml
    DESTINATION "${PLASMA_WELCOME_DATA_DIR}/extra-pages"
)

install(
    FILES data/intro-customization.desktop
    DESTINATION "${PLASMA_WELCOME_DATA_DIR}"
)

install(
    FILES images/opensuse-sinking.svg
    DESTINATION "${CMAKE_INSTALL_DATADIR}/icons/hicolor/scalable/apps"
)
