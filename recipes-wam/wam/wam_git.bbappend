SRC_URI = "\
    git://github.com/igalia/${PN}.git;branch=WIP@6.agl.compositor;protocol=https \
    file://WebAppMgr@.service \
    file://WebAppMgr.env \
    file://trunc-webapp-roles.patch \
"

SRCREV = "7fe85fd505f3246e0448bc92348b9b7126ae943c"
