FILESEXTRAPATHS_prepend := "${THISDIR}/linux-toradex:"
 
# Prevent the use of in-tree defconfig
unset KBUILD_DEFCONFIG
 
MAIVIN_DEVICETREE = "imx8mp-maivin.dts"
 
SRC_URI += "file://defconfig"
SRC_URI += "file://tmp_102_sensor.cfg"

do_configure_append() {
	cp ${WORKDIR}/${MAIVIN_DEVICETREE} ${S}/arch/arm64/boot/dts/freescale
}