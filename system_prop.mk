# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio_hal.period_size=192 \
    audio.deep_buffer.media=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=false \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.video=false \
    av.streaming.offload.enable=enable \
    media.aac_51_output_enabled=true \
    persist.speaker.prot.enable=false \
    qcom.hw.aac.encoder=true \
    ro.config.media_vol_steps=25 \
    ro.config.vc_call_vol_steps=7

# Bluetooth HandsFree profile
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.hfp.client=1

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.camera.facialproc=false \
    ro.qc.sdk.gestures.camera=false \
    camera.disable_zsl_mode=1

# CameraAV MM HAL1 hacks
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=4 \
    dalvik.vm.dex2oat-threads=2 \
    dalvik.vm.image-dex2oat-threads=4

# Data modules config
PRODUCT_PROPERTY_OVERRIDES += \
    ro.data.large_tcp_window_size=true

# Display rendering
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0 \
    debug.mdpcomp.4k2kSplit=1 \
    debug.mdpcomp.4k2kSplit=true \
    dev.pm.dyn_samplingrate=1 \
    debug.hwui.use_buffer_age=false

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1

# HDMI
PRODUCT_PROPERTY_OVERRIDES += \
    persist.demo.hdmirotationlock=false \
    ro.hdmi.enable=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=0

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.am.reschedule_service=true \
    ro.vendor.qti.sys.fw.bservice_enable=true

# MPDecision
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.perf.cores_online=2 \
    ro.vendor.extension_library=libqti-perfd-client.so

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.qmi.adb_logmask=0

# OpenGL ES 3.0
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# Storage & USB OTG
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true \
    persist.sys.isUsbOtgEnabled=true

# Time-service
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Touchscreen
PRODUCT_PROPERTY_OVERRIDES += \
    ro.input.noresample=1
