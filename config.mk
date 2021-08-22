CAMERAPATCH_PATH := vendor/xiaomi/miuicamera

PRODUCT_SOONG_NAMESPACES += \
    $(CAMERAPATCH_PATH)

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/etc,$(TARGET_COPY_OUT_SYSTEM)/etc) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/framework,$(TARGET_COPY_OUT_SYSTEM)/framework) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/lib,$(TARGET_COPY_OUT_SYSTEM)/lib) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/lib64,$(TARGET_COPY_OUT_SYSTEM)/lib64) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/vendor/lib64,$(TARGET_COPY_OUT_VENDOR)/lib64) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/vendor/camera,$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/camera) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system_ext/lib,$(TARGET_COPY_OUT_SYSTEM_EXT)/lib)

PRODUCT_PACKAGES += \
    MiuiCamera \
    MiuiExtraPhoto \
    miuires

