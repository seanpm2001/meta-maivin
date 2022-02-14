FILESEXTRAPATHS_prepend := "${THISDIR}/linux-toradex:"
KBUILD_BUILD_VERSION_append = "-Maivin"

SRC_URI += "file://imx8mp-verdin-wifi-maivin.dts"
SRC_URI += "file://dac_driver.patch"
SRC_URI += "file://dac_driver_patch_2.patch"
SRC_URI += "file://verdin_linux_kernel_camera_support.patch"
SRC_URI += "file://maivin_econ_patch.patch"
SRC_URI += "file://dac_5571.cfg"
SRC_URI += "file://cameras.cfg"

do_configure_append() {
	cp ${WORKDIR}/imx8mp-verdin-wifi-maivin.dts ${S}/arch/arm64/boot/dts/freescale/imx8mp-verdin-wifi-dev.dts
}
