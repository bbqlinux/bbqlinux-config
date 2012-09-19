# Maintainer: Daniel Hillenbrand <codeworkx@bbqlinux.org>

pkgname=bbqlinux-config
pkgver=1.0.0
pkgrel=7
pkgdesc="BBQLinux Configuration"
arch=('any')
url="https://github.com/bbqlinux/bbqlinux-config"
license=('GPL')

package() {
    cd "$pkgdir"
    mkdir -p etc
    cp -R "$srcdir/etc/skel" etc/skel
}
