#Use script to setup everything....

#force sync the source

echo syncing

repo sync --force-sync -j24

echo done

#Remove the old trees

echo removin old stuff

rm -rf device/xiaomi && rm -rf kernel/xiaomi && rm -rf vendor/xiaomi

echo done

#Clone the new trees

echo Cloning trees

git clone https://github.com/Saksham033/vendor_xiaomi.git vendor/xiaomi && git clone https://github.com/Saksham033/android_device_xiaomi_tissot.git -b 4.9-p device/xiaomi/tissot && git clone https://github.com/Saksham033/android_device_xiaomi_msm8953-common.git -b 4.9-p device/xiaomi/msm8953-common && git clone https://github.com/Saksham033/destroyer_kernel_tissot.git -b p-4.9 kernel/xiaomi/msm8953

echo done

# set up build environment

echo setting up build environment

. b*/e*

echo done

#Lunch and make

echo Lunch and make

lunch aosp_tissot-userdebug && lunch arrow_tissot-userdebug && make installclean && mka bacon -j24

echo done

#End
