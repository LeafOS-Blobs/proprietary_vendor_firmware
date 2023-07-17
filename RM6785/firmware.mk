LOCAL_PATH := $(call my-dir)

ifneq ($(filter RMX2001L1 RMX2151L1,$(TARGET_DEVICE)),)

RADIO_FILES := $(wildcard $(LOCAL_PATH)/radio/*)
$(foreach f, $(notdir $(RADIO_FILES)), \
    $(call add-radio-file,radio/$(f)))

endif
