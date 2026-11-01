/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick
import QtQuick.Controls as QQC2
import QtQuick.Layouts

import org.kde.kirigami as Kirigami
import org.kde.plasma.welcome as Welcome

Welcome.Page {
    heading: i18nd("plasma-welcome-branding-openSUSE", "Discover openSUSE")
    description: i18nd("plasma-welcome-branding-openSUSE", "Explore openSUSE documentation, find software, and support the community.")

    ColumnLayout {
        anchors.fill: parent
        spacing: Kirigami.Units.largeSpacing

        Kirigami.Icon {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: Kirigami.Units.gridUnit * 12
            Layout.preferredHeight: Kirigami.Units.gridUnit * 8
            source: "opensuse-sinking"
        }

        GridLayout {
            Layout.fillWidth: true
            columns: 2
            columnSpacing: Kirigami.Units.largeSpacing
            rowSpacing: Kirigami.Units.smallSpacing
            readonly property real buttonColumnWidth: (width - columnSpacing) / columns

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                icon.name: "go-home"
                text: i18nd("plasma-welcome-branding-openSUSE", "Home")
                onClicked: Qt.openUrlExternally("https://www.opensuse.org/")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                icon.name: "message-news"
                text: i18nd("plasma-welcome-branding-openSUSE", "News")
                onClicked: Qt.openUrlExternally("https://news.opensuse.org/")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                icon.name: "help-contents"
                text: i18nd("plasma-welcome-branding-openSUSE", "Docs")
                onClicked: Qt.openUrlExternally("https://doc.opensuse.org/")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                icon.name: "text-wiki"
                text: i18nd("plasma-welcome-branding-openSUSE", "Wiki")
                onClicked: Qt.openUrlExternally("https://en.opensuse.org/Main_Page")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                icon.name: "system-users"
                text: i18nd("plasma-welcome-branding-openSUSE", "Forums")
                onClicked: Qt.openUrlExternally("https://forums.opensuse.org/")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                icon.name: "system-software-install"
                text: i18nd("plasma-welcome-branding-openSUSE", "Software")
                onClicked: Qt.openUrlExternally("https://software.opensuse.org/explore")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                icon.name: "favorite"
                text: i18nd("plasma-welcome-branding-openSUSE", "Donate")
                onClicked: Qt.openUrlExternally("https://geekos.org/donate/")
            }
        }
    }
}
