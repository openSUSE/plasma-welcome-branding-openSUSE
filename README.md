# Plasma Welcome branding for openSUSE

This project adds openSUSE branding to KDE's existing `plasma-welcome` application. It installs the supported intro customization file, one ordered QML page, and a local `opensuse-sinking.svg` icon based on [`openSUSE/openSUSE-welcome`'s `sinking.svg`](https://github.com/openSUSE/openSUSE-welcome/blob/master/data/qrc/web/images/sinking.svg). The local copy keeps the welcome page usable without a network connection. This project does not build or replace the welcome application.

## Build and install

Install the files alongside `plasma-welcome` so the resources land in its default customization directories:

```sh
cmake -S . -B build -DCMAKE_INSTALL_PREFIX=/usr
cmake --build build
sudo cmake --install build
```
