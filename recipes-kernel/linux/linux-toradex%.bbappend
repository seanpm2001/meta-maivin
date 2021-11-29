FILESEXTRAPATHS_prepend := "${THISDIR}/linux-toradex:"
 
SRC_URI += "file://imx8mp-maivin.dts"

SRC_URI += "file://tmp_102_sensor.cfg"
SRC_URI += "file://dac_5571.cfg"

SRC_URI += "file://dac_driver.patch"
SRC_URI += "file://dac_driver_patch_2.patch"

do_configure_append() {
	cp ${WORKDIR}/imx8mp-maivin.dts ${S}/arch/arm64/boot/dts/freescale
}