# Maintainer: Daniel Hillenbrand < codeworkx [at] bbqlinux [dot] org>

pkgname=bbqlinux-config
pkgver=1.5.0
pkgrel=1
pkgdesc="BBQLinux Configuration"
arch=('any')
depends=('bbqlinux-mirrorlist')
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

    cp -R "$srcdir/etc/skel" etc/skel
}
