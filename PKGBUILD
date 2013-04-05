# Maintainer: Daniel Hillenbrand <codeworkx@bbqlinux.org>

pkgname=bbqlinux-config
pkgver=1.2.0
pkgrel=1
pkgdesc="BBQLinux Configuration"
arch=('any')
depends=('bbqlinux-artwork')
url="https://github.com/bbqlinux/bbqlinux-config"
license=('GPL')

package() {
    cd "$pkgdir"
    mkdir -p etc

    cp -R "$srcdir/etc/skel" etc/skel
}
