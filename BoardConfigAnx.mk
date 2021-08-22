CAMERAPATCH_PATH := vendor/xiaomi/miuicamera

TARGET_SYSTEM_PROP += $(CAMERAPATCH_PATH)/system_patch.prop

TARGET_LD_SHIM_LIBS += \
    system/lib/libcameraservice.so|libmedia_jni_shim.so
