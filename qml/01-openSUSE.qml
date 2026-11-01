/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick
import QtQuick.Layouts

import org.kde.kirigami as Kirigami
import org.kde.plasma.welcome as Welcome

Welcome.Page {
    heading: i18nc("@title", "Discover openSUSE")
    description: i18nc("@info:usagetip", "Explore openSUSE documentation, find software, and support the community.")

    ColumnLayout {
        anchors.centerIn: parent
        spacing: Kirigami.Units.largeSpacing

        Kirigami.Icon {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: Kirigami.Units.gridUnit * 12
            Layout.preferredHeight: Kirigami.Units.gridUnit * 8
            source: "opensuse-sinking"
        }

        Kirigami.UrlButton {
            Layout.alignment: Qt.AlignHCenter
            text: i18nc("@action:button", "Read the documentation")
            url: "https://doc.opensuse.org/"
        }

        Kirigami.UrlButton {
            Layout.alignment: Qt.AlignHCenter
            text: i18nc("@action:button", "Explore software")
            url: "https://software.opensuse.org/explore"
        }

        Kirigami.UrlButton {
            Layout.alignment: Qt.AlignHCenter
            text: i18nc("@action:button", "Support the project")
            url: "https://geekos.org/donate/"
        }
    }
}
