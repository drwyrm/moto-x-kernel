export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/data/bench/vadim/Android/kernel/uber/aarch64-linux-android-4.9/bin/aarch64-linux-android-
#export CROSS_COMPILE=/data/bench/vadim/Android/kernel/gcc-linaro-4.9-2015.02-3-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
export OUT=/data/bench/vadim/Android/kernel/out13
mkdir -p $OUT
INDIR=kernel
export KBUILD_BUILD_USER=v4tk
export KBUILD_BUILD_HOST=optimized
make -j32 -C kernel O=$OUT KCFLAGS= msm8994-v4tk_defconfig
#cat kernel/arch/arm64/configs/msm8994-perf_defconfig > $OUT/.config
make -j32 -C $INDIR O=$OUT KCFLAGS= defoldconfig
make -j32 -C $INDIR O=$OUT KCFLAGS= headers_install
make -j32 -C $INDIR O=$OUT KCFLAGS= CONFIG_NO_ERROR_ON_MISMATCH=y
make -n -j32 -C $INDIR O=$OUT KCFLAGS= dtbs
#make -n -j32 -C kernel O=$OUT KCFLAGS=-mno-android Image.gz-dtb
#make -j32 -C kernel O=$OUT headers_install
#make -j32 -C kernel O=$OUT modules
#make -j32 -C kernel O=/root/kernel/out2 mrproper
