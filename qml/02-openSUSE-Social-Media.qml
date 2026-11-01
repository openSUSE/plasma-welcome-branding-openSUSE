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
        anchors.fill: parent

        GridLayout {
            width: parent.width
            columns: 2
            columnSpacing: Kirigami.Units.largeSpacing
            rowSpacing: Kirigami.Units.smallSpacing

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: "X/Twitter"
                url: "https://x.com/openSUSE"
            }

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: "Bluesky"
                url: "https://bsky.app/profile/opensuse.org"
            }

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: "Mastodon"
                url: "https://fosstodon.org/@opensuse"
            }

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: "Facebook"
                url: "https://www.facebook.com/en.openSUSE"
            }

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: "Instagram"
                url: "https://www.instagram.com/opensuse"
            }

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: "LinkedIn"
                url: "https://www.linkedin.com/groups?mostPopular=&gid=61388"
            }

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: "Telegram"
                url: "https://t.me/openSUSE_Project"
            }

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: "Reddit"
                url: "https://www.reddit.com/r/openSUSE/"
            }

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: "Discord"
                url: "https://discord.gg/opensuse"
            }

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: "Twitch"
                url: "https://www.twitch.tv/opensuse"
            }

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: "YouTube"
                url: "https://www.youtube.com/opensusetv"
            }

            Kirigami.UrlButton {
                Layout.fillWidth: true
                text: i18nd("plasma-welcome-branding-openSUSE", "All openSUSE social media contacts")
                url: "https://en.opensuse.org/openSUSE:Social_media_contacts"
            }
        }
    }
}
