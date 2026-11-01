/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick
import QtQuick.Controls as QQC2
import QtQuick.Layouts

import org.kde.kirigami as Kirigami
import org.kde.plasma.welcome as Welcome

Welcome.Page {
    heading: i18ndc("plasma-welcome-branding-openSUSE", "@title", "openSUSE Social Media")
    description: i18ndc("plasma-welcome-branding-openSUSE", "@info:usagetip", "Follow openSUSE on social media and connect with the community.")

    QQC2.ScrollView {
        anchors.fill: parent

        ColumnLayout {
            width: parent.width
            spacing: Kirigami.Units.smallSpacing

            Kirigami.Heading {
                Layout.fillWidth: true
                level: 2
                text: i18ndc("plasma-welcome-branding-openSUSE", "@title", "Microblogging")
            }

            Kirigami.UrlButton {
                text: "X/Twitter"
                url: "https://x.com/openSUSE"
            }

            Kirigami.UrlButton {
                text: "Bluesky"
                url: "https://bsky.app/profile/opensuse.org"
            }

            Kirigami.UrlButton {
                text: "Mastodon"
                url: "https://fosstodon.org/@opensuse"
            }

            Kirigami.Heading {
                Layout.fillWidth: true
                level: 2
                text: i18ndc("plasma-welcome-branding-openSUSE", "@title", "Social networks")
            }

            Kirigami.UrlButton {
                text: "Facebook"
                url: "https://www.facebook.com/en.openSUSE"
            }

            Kirigami.UrlButton {
                text: "Instagram"
                url: "https://www.instagram.com/opensuse"
            }

            Kirigami.UrlButton {
                text: "LinkedIn"
                url: "https://www.linkedin.com/groups?mostPopular=&gid=61388"
            }

            Kirigami.UrlButton {
                text: "Telegram"
                url: "https://t.me/openSUSE_Project"
            }

            Kirigami.UrlButton {
                text: "Reddit"
                url: "https://www.reddit.com/r/openSUSE/"
            }

            Kirigami.Heading {
                Layout.fillWidth: true
                level: 2
                text: i18ndc("plasma-welcome-branding-openSUSE", "@title", "More from openSUSE")
            }

            Kirigami.UrlButton {
                text: i18ndc("plasma-welcome-branding-openSUSE", "@action:button", "News")
                url: "https://news.opensuse.org/"
            }

            Kirigami.UrlButton {
                text: "Discord"
                url: "https://discord.gg/opensuse"
            }

            Kirigami.UrlButton {
                text: "Twitch"
                url: "https://www.twitch.tv/opensuse"
            }

            Kirigami.UrlButton {
                text: "YouTube"
                url: "https://www.youtube.com/opensusetv"
            }

            Kirigami.UrlButton {
                text: i18ndc("plasma-welcome-branding-openSUSE", "@action:button", "All openSUSE social media contacts")
                url: "https://en.opensuse.org/openSUSE:Social_media_contacts"
            }
        }
    }
}
