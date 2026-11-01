/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick
import QtQuick.Controls as QQC2
import QtQuick.Layouts

import org.kde.kirigami as Kirigami
import org.kde.plasma.welcome as Welcome

Welcome.Page {
    heading: i18nc("@title", "openSUSE Social Media")
    description: i18nc("@info:usagetip", "Follow openSUSE on social media and connect with the community.")

    QQC2.ScrollView {
        anchors.fill: parent

        ColumnLayout {
            width: parent.width
            spacing: Kirigami.Units.smallSpacing

            Kirigami.Heading {
                Layout.fillWidth: true
                level: 2
                text: i18nc("@title", "Microblogging")
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "X (@openSUSE)")
                url: "https://twitter.com/openSUSE"
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "Bluesky (@opensuse.org)")
                url: "https://bsky.app/profile/opensuse.org"
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "Mastodon (@openSUSE)")
                url: "https://fosstodon.org/@opensuse"
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "Weibo (@openSUSEzh)")
                url: "https://weibo.com/openSUSEzh"
            }

            Kirigami.Heading {
                Layout.fillWidth: true
                level: 2
                text: i18nc("@title", "Social networks")
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "Facebook")
                url: "https://www.facebook.com/en.openSUSE"
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "Instagram")
                url: "https://www.instagram.com/opensuse"
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "LinkedIn")
                url: "https://www.linkedin.com/groups?mostPopular=&gid=61388"
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "Telegram")
                url: "https://t.me/openSUSE_Project"
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "Reddit")
                url: "https://www.reddit.com/r/openSUSE/"
            }

            Kirigami.Heading {
                Layout.fillWidth: true
                level: 2
                text: i18nc("@title", "More from openSUSE")
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "News")
                url: "https://news.opensuse.org/"
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "Discord")
                url: "https://discord.gg/opensuse"
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "Twitch")
                url: "https://www.twitch.tv/opensuse"
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "YouTube")
                url: "https://www.youtube.com/opensusetv"
            }

            Kirigami.UrlButton {
                text: i18nc("@action:button", "All openSUSE social media contacts")
                url: "https://en.opensuse.org/openSUSE:Social_media_contacts"
            }
        }
    }
}
