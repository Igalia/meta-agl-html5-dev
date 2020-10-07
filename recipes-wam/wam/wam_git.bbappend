DEPENDS = "glib-2.0 jsoncpp boost chromium79 wayland-ivi-extension libhomescreen"

EXTRA_OECMAKE = "\
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=${prefix} \
    -DPLATFORM_NAME=${@'${DISTRO}'.upper().replace('-', '_')} \
    -DCHROMIUM_SRC_DIR=${STAGING_INCDIR}/chromium79"

SRC_URI = "\
    git://github.com/igalia/${BPN}.git;branch=@43.agl.jellyfish;protocol=https \
    file://WebAppMgr@.service \
    file://WebAppMgr.env \
    file://trunc-webapp-roles.patch \
"
SRCREV = "66ed99f2c23f6a800fda85f48fb62c735b5f9085"
