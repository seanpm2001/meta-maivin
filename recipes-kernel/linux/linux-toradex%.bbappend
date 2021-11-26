FILESEXTRAPATHS_prepend := "${THISDIR}/linux-toradex:"
 
SRC_URI += "file://tmp_102_sensor.cfg"
# SRC_URI += "file://ignore_quiet.cfg"
SRC_URI += "file://imx8mp-maivin.dts"
SRC_URI += "file://dac_driver.patch"

do_configure_append() {
	cp ${WORKDIR}/imx8mp-maivin.dts ${S}/arch/arm64/boot/dts/freescale
}