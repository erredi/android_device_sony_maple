### PLATFORM
$(call inherit-product, device/sony/yoshino-common/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/sony/maple/maple-vendor.mk)
### ADD STOCK SONY CAMERA
$(call inherit-product-if-exists, vendor/sony/camera/sony-camera.mk)

ifeq ($(WITH_FDROID),true)
$(call inherit-product, vendor/fdroid/fdroid-vendor.mk)
endif

DEVICE_PATH := device/sony/maple

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

include $(DEVICE_PATH)/device/*.mk
