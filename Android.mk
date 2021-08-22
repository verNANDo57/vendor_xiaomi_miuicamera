LOCAL_PATH := $(call my-dir)

ifneq ($(filter curtana excalibur gram joyeuse,$(TARGET_DEVICE)),)

include $(call all-subdir-makefiles)

CAM_LIBS := libclone_c++_shared.so libcom.xiaomi.camera.algojni.so libcom.xiaomi.camera.mianodejni.so libcom.xiaomi.camera.requestutil.so libDocumentProcess_qcom.so libfenshen_snpe.so libffmpeg.so libjni_jpegutil_xiaomi.so libmulti-wakeup-engine.so librecord_video.so libvvc++_shared.so libDocumentProcess.so
CAM_SYMLINKS := $(addprefix $(PRODUCT_OUT)/system/priv-app/MiuiCamera/lib/arm64/,$(notdir $(CAM_LIBS)))
$(CAM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Cam lib link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system/lib64/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CAM_SYMLINKS)

endif
