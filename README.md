# Plasma Welcome branding for openSUSE

This project adds openSUSE branding to KDE's existing `plasma-welcome` application. It installs the supported intro customization file and one ordered QML page; it does not build or replace the welcome application. Both use the system-provided `openSUSE-distributor-logo` icon.

## Build and install

Install the files alongside `plasma-welcome` so the resources land in its default customization directories:

```sh
cmake -S . -B build -DCMAKE_INSTALL_PREFIX=/usr
cmake --build build
sudo cmake --install build
```
