### DEVICE INIT
PRODUCT_PACKAGES += \
    init.recovery.maple \
    init.maple \
    fstab.maple
    
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/config/init.maple.nfc.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.maple.nfc.rc
