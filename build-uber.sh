export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/data/bench/vadim/Android/kernel/uber/aarch64-linux-android-4.9/bin/aarch64-linux-android-
#export CROSS_COMPILE=/data/bench/vadim/Android/kernel/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export OUT=/data/bench/vadim/Android/kernel/out44
mkdir -p $OUT
#INDIR=moto-x-kernel-2
INDIR=mod/moto-x-kernel
export KBUILD_BUILD_USER=v4tk
export KBUILD_BUILD_HOST=optimized
make -j32 -C $INDIR O=$OUT KCFLAGS= msm8994-v4tk_defconfig
#make -j32 -C $INDIR O=$OUT KCFLAGS= menuconfig
make -j32 -C $INDIR O=$OUT KCFLAGS= defoldconfig
make -j32 -C $INDIR O=$OUT KCFLAGS= headers_install
#make -j32 -C $INDIR O=$OUT KCFLAGS= CONFIG_NO_ERROR_ON_MISMATCH=y
make -j32 -C $INDIR O=$OUT KCFLAGS= LOCALVERSION="-v4tk-O3-V6"
#make -n -j32 -C $INDIR O=$OUT KCFLAGS= dtbs
