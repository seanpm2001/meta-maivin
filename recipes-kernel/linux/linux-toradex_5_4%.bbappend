FILESEXTRAPATHS_prepend := "${THISDIR}/linux-toradex:"
 
# Prevent the use of in-tree defconfig
unset KBUILD_DEFCONFIG
 
MAIVIN_DEVICETREE = "imx8mp-maivin.dts"
MAIVIN_CONFIG = "maivin_config.config"
 
SRC_URI += "\ 
	file://${MAIVIN_DEVICETREE} \
	file://${MAIVIN_CONFIG} \
	"
 
do_configure_append() {
	cp ${WORKDIR}/${MAIVIN_DEVICETREE} ${S}/arch/arm64/boot/dts/freescale
}