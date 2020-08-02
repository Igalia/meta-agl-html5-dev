SRC_URI = "\
    git://github.com/igalia/${PN};branch=WIP@39.agl.compositor;protocol=https;rev=${SRCREV_chromium68};name=chromium68 \
    git://github.com/webosose/v8;destsuffix=git/src/v8;rev=${SRCREV_v8};name=v8 \
    file://v8-qemu-wrapper.patch \
 "

SRCREV_chromium68 = "ed21537f851045f1a7deb08f17ad59960ca897a3"
