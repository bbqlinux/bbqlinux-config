# Maintainer: Daniel Hillenbrand <codeworkx@bbqlinux.org>

pkgname=bbqlinux-config
pkgver=1.0.1
pkgrel=1
pkgdesc="BBQLinux Configuration"
arch=('any')
url="https://github.com/bbqlinux/bbqlinux-config"
license=('GPL')

package() {
    cd "$pkgdir"
    mkdir -p etc
    cp -R "$srcdir/etc/polkit-1" etc/polkit-1
    cp -R "$srcdir/etc/skel" etc/skel
}
