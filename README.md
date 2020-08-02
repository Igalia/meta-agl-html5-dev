**README.md for the 'meta-agl-html5' layer.**

meta-agl-html5-dev
==================

This meta-layer is used only while in-development
features for the AGL HTML5 flavor.

In Jellyfish the new AGL-compositor was introduced,
chromium, WAM and webapps need to be adapted.

Quick start guide
-----------------

1. Fetch AGL master with repo tool.

```bash
repo init -b master -u https://gerrit.automotivelinux.org/gerrit/AGL/AGL-repo
repo sync
```

2. Clone this repository in same path of other layers.

3. Call to aglsetup.sh adding agl-html5-dev as a feature.

I.e. for Minnowboard:

```bash
source meta-agl/scripts/aglsetup.sh -f -m intel-corei7-64 -b build agl-html5-dev agl-profile-graphical-html5 agl-demo
```

4. Build the target agl-demo-platform-html5

```bash
bitbake agl-demo-platform-html5
```

5. Flash the resulting build.

I.e. for Minnowboard, flashing on /dev/sdX (replace with your actual target device):

```bash
xzcat tmp/deploy/images/intel-corei7-64/agl-demo-platform-html5-intel-corei7-64.wic.xz | sudo dd of=/dev/sdX bs=4M && sync
```

Supported Machines
------------------

Reference hardware:

* Renesas H3/M3 (h3ulcb, m3ulcb)
* Raspberrypi 3/4 (raspberrypi3, raspberrypi4)
* Intel Minnowboard (intel-corei7-64)
* ...


