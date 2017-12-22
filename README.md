Device configuration for Sony Xperia XZ1 Compact (lilac)
========================================================

Description
-----------

This repository is for LineageOS 15.0 on Sony Xperia XZ1 Compact (lilac).

How to build LineageOS
----------------------

* Make a workspace:

    mkdir -p ~/lineageos/repo
    cd ~/lineageos/repo

* Initialize the repo:

    repo init -u git://github.com/LineageOS/android.git -b lineage-15.0

* Create a local manifest:

    vim .repo/local_manifests/roomservice.xml

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
        <!-- SONY -->
        <project name="LineageOS/android_hardware_sony_macaddrsetup" path="hardware/sony/macaddrsetup" remote="github" />
        <project name="LineageOS/android_hardware_sony_thermanager" path="hardware/sony/thermanager" remote="github" />
        <project name="LineageOS/android_hardware_sony_timekeep" path="hardware/sony/timekeep" remote="github" />

        <project name="LineageOS/android_device_qcom_common" path="device/qcom/common" remote="github" />
        <project name="LineageOS/android_device_sony_common" path="device/sony/common" remote="github" />

        <project name="cryptomilk/android_kernel_sony_msm8998" path="kernel/sony/msm8998" remote="github" />
        <project name="cryptomilk/android_device_sony_common-treble" path="device/sony/common-treble" remote="github" />
        <project name="cryptomilk/android_device_sony_yoshino" path="device/sony/yoshino" remote="github" />
        <project name="cryptomilk/android_device_sony_lilac" path="device/sony/lilac" remote="github" />

        <project name="cryptomilk/proprietary_vendor_sony_lilac" path="vendor/sony/lilac" remote="github" />
    </manifest>

* Sync the repo:

    repo sync

* Setup the environment

    source build/envsetup.sh
    lunch lineage_lilac-userdebug

* Build LineageOS

    make -j8 bacon
