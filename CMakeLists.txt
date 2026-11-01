# SPDX-License-Identifier: GPL-3.0-or-later
cmake_minimum_required(VERSION 3.16)
project(plasma-welcome-branding-openSUSE VERSION 0.1.0 LANGUAGES NONE)

find_package(Gettext REQUIRED)

if(NOT CMAKE_INSTALL_DATADIR)
    set(CMAKE_INSTALL_DATADIR "share")
endif()

set(PLASMA_WELCOME_DATA_DIR "${CMAKE_INSTALL_DATADIR}/plasma/plasma-welcome")
set(PLASMA_WELCOME_TRANSLATION_DOMAIN "plasma-welcome-branding-openSUSE")
set(PLASMA_WELCOME_TRANSLATION_LANGUAGES zh_CN zh_TW de fr)

foreach(language IN LISTS PLASMA_WELCOME_TRANSLATION_LANGUAGES)
    configure_file(
        "${CMAKE_CURRENT_SOURCE_DIR}/po/${language}.po"
        "${CMAKE_CURRENT_BINARY_DIR}/${language}.po"
        COPYONLY
    )
endforeach()

gettext_process_pot_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/po/${PLASMA_WELCOME_TRANSLATION_DOMAIN}.pot"
    ALL
    INSTALL_DESTINATION "${CMAKE_INSTALL_DATADIR}/locale"
    LANGUAGES ${PLASMA_WELCOME_TRANSLATION_LANGUAGES}
)

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
