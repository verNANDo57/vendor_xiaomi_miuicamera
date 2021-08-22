CAMERAPATCH_PATH := vendor/xiaomi/miuicamera

PRODUCT_SOONG_NAMESPACES += \
    $(CAMERAPATCH_PATH)

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/etc/default-permissions,$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/etc/permissions,$(TARGET_COPY_OUT_SYSTEM)/etc/permissions) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/etc/sysconfig,$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/etc/ANXCamera/fonts,$(TARGET_COPY_OUT_SYSTEM)/etc/ANXCamera/fonts) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/etc/ANXCamera/cheatcodes,$(TARGET_COPY_OUT_SYSTEM)/etc/ANXCamera/cheatcodes) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/framework,$(TARGET_COPY_OUT_SYSTEM)/framework) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/lib,$(TARGET_COPY_OUT_SYSTEM)/lib) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/lib64,$(TARGET_COPY_OUT_SYSTEM)/lib64) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/vendor/lib64,$(TARGET_COPY_OUT_VENDOR)/lib64) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/vendor/camera,$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/camera) \
    $(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system_ext/lib,$(TARGET_COPY_OUT_SYSTEM_EXT)/lib)

ifneq ($(filter joyeuse,$(TARGET_DEVICE)),)
	PRODUCT_COPY_FILES += \
		$(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/etc/ANXCamera/features/joyeuse.xml,$(TARGET_COPY_OUT_SYSTEM)/etc/ANXCamera/features/joyeuse.xml)
else ifneq ($(filter curtana,$(TARGET_DEVICE)),)
	PRODUCT_COPY_FILES += \
		$(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/etc/ANXCamera/features/curtana.xml,$(TARGET_COPY_OUT_SYSTEM)/etc/ANXCamera/features/curtana.xml)
else ifneq ($(filter gram,$(TARGET_DEVICE)),)
	PRODUCT_COPY_FILES += \
		$(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/etc/ANXCamera/features/gram.xml,$(TARGET_COPY_OUT_SYSTEM)/etc/ANXCamera/features/gram.xml)
else ifneq ($(filter excalibur,$(TARGET_DEVICE)),)
	PRODUCT_COPY_FILES += \
		$(call find-copy-subdir-files,*,$(CAMERAPATCH_PATH)/proprietary/system/etc/ANXCamera/features/excalibur.xml,$(TARGET_COPY_OUT_SYSTEM)/etc/ANXCamera/features/excalibur.xml)
endif

PRODUCT_PACKAGES += \
    MiuiCamera \
    MiuiExtraPhoto \
    miuires

# Shim
PRODUCT_PACKAGES += \
    libmedia_jni_shim
