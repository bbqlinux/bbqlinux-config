# Maintainer: Daniel Hillenbrand <codeworkx@bbqlinux.org>

pkgname=bbqlinux-config
pkgver=1.2.5
pkgrel=1
pkgdesc="BBQLinux Configuration"
arch=('any')
depends=('bbqlinux-artwork>=1.0.3' 'gtk-theme-bbqlinux')
url="https://github.com/bbqlinux/bbqlinux-config"
license=('GPL')

package() {
    cd "$pkgdir"
    mkdir -p etc
    mkdir -p usr/bin

    install -Dm755 "$srcdir/usr/bin/bbqlinux-gsettings.sh" usr/bin/bbqlinux-gsettings.sh

    cp -R "$srcdir/etc/skel" etc/skel
}
