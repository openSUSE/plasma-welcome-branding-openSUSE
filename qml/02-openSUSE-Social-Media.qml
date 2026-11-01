/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick
import QtQuick.Controls as QQC2
import QtQuick.Layouts

import org.kde.kirigami as Kirigami
import org.kde.plasma.welcome as Welcome

Welcome.Page {
    heading: i18nd("plasma-welcome-branding-openSUSE", "openSUSE Social Media")
    description: i18nd("plasma-welcome-branding-openSUSE", "Follow openSUSE on social media and connect with the community.")

    QQC2.ScrollView {
        id: socialScrollView
        anchors.fill: parent

        GridLayout {
            width: socialScrollView.availableWidth
            columns: 2
            columnSpacing: Kirigami.Units.largeSpacing
            rowSpacing: Kirigami.Units.smallSpacing
            readonly property real buttonColumnWidth: (width - columnSpacing) / columns

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: "Bluesky"
                onClicked: Qt.openUrlExternally("https://bsky.app/profile/opensuse.org")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: "Discord"
                onClicked: Qt.openUrlExternally("https://discord.gg/opensuse")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: "Facebook"
                onClicked: Qt.openUrlExternally("https://www.facebook.com/en.openSUSE")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: "Instagram"
                onClicked: Qt.openUrlExternally("https://www.instagram.com/opensuse")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: "LinkedIn"
                onClicked: Qt.openUrlExternally("https://www.linkedin.com/groups?mostPopular=&gid=61388")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: "Mastodon"
                onClicked: Qt.openUrlExternally("https://fosstodon.org/@opensuse")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: "Reddit"
                onClicked: Qt.openUrlExternally("https://www.reddit.com/r/openSUSE/")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: "Telegram"
                onClicked: Qt.openUrlExternally(i18nd("plasma-welcome-branding-openSUSE", "https://t.me/opensuse"))
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: "Twitch"
                onClicked: Qt.openUrlExternally("https://www.twitch.tv/opensuse")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: "X/Twitter"
                onClicked: Qt.openUrlExternally("https://x.com/openSUSE")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: "YouTube"
                onClicked: Qt.openUrlExternally("https://www.youtube.com/opensusetv")
            }

            QQC2.Button {
                Layout.fillWidth: true
                Layout.minimumWidth: 0
                Layout.preferredWidth: parent.buttonColumnWidth
                text: i18nd("plasma-welcome-branding-openSUSE", "More...")
                onClicked: Qt.openUrlExternally("https://en.opensuse.org/openSUSE:Social_media_contacts")
            }
        }
    }
}
