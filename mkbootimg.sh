MKBOOTIMG=/data/bench/vadim/Android/kernel/mkbootimg/mkbootimg
$MKBOOTIMG --kernel ./Image \
	--ramdisk ./boot.img-ramdisk.gz \
	--cmdline "console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 earlyprintk=msm_hsl_uart,0xf991e000 utags.blkdev=/dev/block/bootdevice/by-name/utags utags.backup=/dev/block/bootdevice/by-name/utagsBackup boot_cpus=0-3" \
	--base 0x00000000 \
	--pagesize 4096 \
	--dt ./boot.img-dt.gz \
	--output ./v4tk-kernel-uber-alias-nobfq3.img
