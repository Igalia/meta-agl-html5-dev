DEPENDS_remove = "chromium68"
DEPENDS_append = " chromium79"

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
SRCREV = "bd334e26efbd5803e9719a8c1f4071bb8fe646ab"
