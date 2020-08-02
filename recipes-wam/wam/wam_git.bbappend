SRC_URI = "\
    git://github.com/igalia/${PN}.git;branch=WIP@6.agl.compositor;protocol=https \
    file://WebAppMgr@.service \
    file://WebAppMgr.env \
    file://trunc-webapp-roles.patch \
"

SRCREV = "d6f9133b406124eda618668987de3e5f45584391"
