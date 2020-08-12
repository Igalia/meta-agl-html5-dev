SRC_URI = "\
    git://github.com/igalia/${PN}.git;branch=WIP@6.agl.compositor;protocol=https \
    file://WebAppMgr@.service \
    file://WebAppMgr.env \
    file://trunc-webapp-roles.patch \
"

SRCREV = "bd650046b688eb1593ae68c16ba3912837507d08"
