LOCAL_PATH := $(call my-dir)
APP_PLATFORM := android-10

include $(CLEAR_VARS)

LOCAL_LDLIBS += -llog -lz

LAME_LIBMP3_DIR := src
LOCAL_SRC_FILES := \
	$(LAME_LIBMP3_DIR)/bitstream.c \
	$(LAME_LIBMP3_DIR)/fft.c \
	$(LAME_LIBMP3_DIR)/id3tag.c \
	$(LAME_LIBMP3_DIR)/mpglib_interface.c \
	$(LAME_LIBMP3_DIR)/presets.c \
	$(LAME_LIBMP3_DIR)/quantize.c \
	$(LAME_LIBMP3_DIR)/reservoir.c \
	$(LAME_LIBMP3_DIR)/tables.c \
	$(LAME_LIBMP3_DIR)/util.c \
	$(LAME_LIBMP3_DIR)/VbrTag.c \
	$(LAME_LIBMP3_DIR)/encoder.c \
	$(LAME_LIBMP3_DIR)/gain_analysis.c \
	$(LAME_LIBMP3_DIR)/lame.c \
	$(LAME_LIBMP3_DIR)/newmdct.c \
	$(LAME_LIBMP3_DIR)/psymodel.c \
	$(LAME_LIBMP3_DIR)/quantize_pvt.c \
	$(LAME_LIBMP3_DIR)/set_get.c \
	$(LAME_LIBMP3_DIR)/takehiro.c \
	$(LAME_LIBMP3_DIR)/vbrquantize.c \
	$(LAME_LIBMP3_DIR)/version.c \
	com_xfdingustc_eac_recorder_LameWrapper.c

LOCAL_CFLAGS := -march=armv7-a -mfloat-abi=softfp -mfpu=neon -g -O0
LOCAL_MODULE := mp3lame


include $(BUILD_SHARED_LIBRARY)
