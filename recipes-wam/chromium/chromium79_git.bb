require recipes-wam/chromium/chromium68_git.bb

SRC_URI = "\
    git://github.com/igalia/${PN};branch=@37.agl.jellyfish;protocol=https;rev=${SRCREV_chromium79};name=chromium79 \
    git://github.com/webosose/chromium-v8;branch=@chromium79;destsuffix=git/src/v8;rev=${SRCREV_v8};name=v8 \
    file://v8-qemu-wrapper.patch \
"


SRCREV_chromium79 = "785d9de6b39827403c6a27765d12a814d7a0dc29"
SRCREV_v8 = "e876fd0e28bd3bda5815394874183b7e6079d440"

BROWSER_APPLICATION = "chromium79-browser"
BROWSER_APPLICATION_DIR = "/opt/chromium79"
