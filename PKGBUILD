# Maintainer: Daniel Hillenbrand <codeworkx@bbqlinux.org>

pkgname=bbqlinux-config
pkgver=1.1.1
pkgrel=1
pkgdesc="BBQLinux Configuration"
arch=('any')
depends=('bbqlinux-artwork')
url="https://github.com/bbqlinux/bbqlinux-config"
license=('GPL')

package() {
    cd "$pkgdir"
    mkdir -p etc

    install -Dm700 "$srcdir/etc/polkit-1/localauthority/50-local.d/org.freedesktop.udisks2.pkla" etc/polkit-1/localauthority/50-local.d/org.freedesktop.udisks2.pkla
    install -Dm700 "$srcdir/etc/polkit-1/localauthority/50-local.d/org.freedesktop.upower.pkla" etc/polkit-1/localauthority/50-local.d/org.freedesktop.upower.pkla

    cp -R "$srcdir/etc/skel" etc/skel
}
