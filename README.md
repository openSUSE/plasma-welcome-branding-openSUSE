# Plasma Welcome branding for openSUSE

This project adds openSUSE branding to KDE's existing `plasma-welcome` application. It installs the supported intro customization file, two ordered QML pages, and a local `opensuse-sinking.svg` icon based on [`openSUSE/openSUSE-welcome`'s `sinking.svg`](https://github.com/openSUSE/openSUSE-welcome/blob/master/data/qrc/web/images/sinking.svg). The local copy keeps the welcome page usable without a network connection. This project does not build or replace the welcome application.

The QML translations use the `plasma-welcome-branding-openSUSE` gettext domain. POT and PO catalogs are in `po/`; current translations are Simplified Chinese, Traditional Chinese, German, and French. Build dependencies include GNU gettext tools (`msgfmt` and `msgmerge`).

## Build and install

Install the files alongside `plasma-welcome` so the resources land in its default customization directories:

```sh
cmake -S . -B build -DCMAKE_INSTALL_PREFIX=/usr
cmake --build build
sudo cmake --install build
```

## Updating translations

When QML strings change, regenerate the template and merge it into each catalog:

```sh
xgettext --language=JavaScript --from-code=UTF-8 \
  --keyword=i18nd:2 \
  --package-name=plasma-welcome-branding-openSUSE \
  --package-version=1.0.0 \
  --output=po/plasma-welcome-branding-openSUSE.pot \
  qml/01-openSUSE.qml qml/02-openSUSE-Social-Media.qml

for language in zh_CN zh_TW de fr; do
  msgmerge --update --backup=none "po/${language}.po" \
    po/plasma-welcome-branding-openSUSE.pot
done
```
