require recipes-wam/chromium/chromium68_git.bb

SRC_URI = "\
    git://github.com/igalia/${PN};branch=@37.agl.jellyfish;protocol=https;rev=${SRCREV_chromium79};name=chromium79 \
    git://github.com/webosose/chromium-v8;branch=@chromium79;destsuffix=git/src/v8;rev=${SRCREV_v8};name=v8 \
    file://v8-qemu-wrapper.patch \
    file://0001-GCC-fix-includes-for-gcc-10.patch \
"

# Needed by catapult
DEPENDS += "python-six-native python-beautifulsoup4-native python-lxml-native python-html5lib-native python-webencodings-native"

SRCREV_chromium79 = "68a7001e340e2854a70ac83824dcb90b14de9f63"
SRCREV_v8 = "e876fd0e28bd3bda5815394874183b7e6079d440"

BROWSER_APPLICATION = "chromium79-browser"
BROWSER_APPLICATION_DIR = "/opt/chromium79"

GN_ARGS += "use_gtk=false"

# Disable closure_compile
# Else we need HOSTTOOLS += "java"
GN_ARGS += "closure_compile=false"

