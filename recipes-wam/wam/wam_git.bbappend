DEPENDS_remove = "chromium68"
DEPENDS_append = " chromium79"

EXTRA_OECMAKE = "\
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=${prefix} \
    -DPLATFORM_NAME=${@'${DISTRO}'.upper().replace('-', '_')} \
    -DCHROMIUM_SRC_DIR=${STAGING_INCDIR}/chromium79"

# Disable some of securit_flags
# Disable D_FORTIFY_SOURCE=2 and -fstack-protector-strong
# Refer conf/distro/include/security_flags.inc in meta-webos/conf/distro/include/webos.inc
lcl_maybe_fortify = ""
SECURITY_STACK_PROTECTOR = ""

SRC_URI = "\
    git://github.com/igalia/${BPN}.git;branch=@43.agl.jellyfish;protocol=https \
    file://WebAppMgr@.service \
    file://WebAppMgr.env \
    file://trunc-webapp-roles.patch \
"
SRCREV = "88e9df41cf6dfbcb5d2ea10c769a44e69171a1c3"
