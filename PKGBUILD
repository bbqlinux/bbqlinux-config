# Maintainer: Daniel Hillenbrand < codeworkx [at] bbqlinux [dot] org>

pkgname=bbqlinux-config
pkgver=1.4.1
pkgrel=1
pkgdesc="BBQLinux Configuration"
arch=('any')
depends=('bbqlinux-mirrorlist' 'bbqlinux-artwork>=1.0.3' 'bbqlinux-theme')
url="https://github.com/bbqlinux/bbqlinux-config"
license=('GPL')
install=${pkgname}.install

package() {
    cd "$pkgdir"
    mkdir -p etc
    mkdir -p usr/bin

    install -Dm644 "$srcdir/etc/pacman.bbqlinux.conf" etc/pacman.bbqlinux.conf
    install -Dm644 "$srcdir/etc/pacman.i686.conf.bbqnew" etc/pacman.i686.conf.bbqnew
    install -Dm644 "$srcdir/etc/pacman.x86_64.conf.bbqnew" etc/pacman.x86_64.conf.bbqnew

    install -Dm755 "$srcdir/usr/bin/bbqlinux-gsettings.sh" usr/bin/bbqlinux-gsettings.sh

    cp -R "$srcdir/etc/skel" etc/skel
}
