# RIL config parameters
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
    rild.libargs=-d /dev/smd0 \
    ril.subscription.types=NV,RUIM \
    ro.ril.enable.amr.wideband=1

# LTE, GSM/WCDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=9 \
    ro.ril.telephony.mqanelements=5 \
    telephony.lteOnCdmaDevice=0 \
    telephony.lteOnGsmDevice=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.add_power_save=1 \
    persist.radio.oem_socket=true \
    persist.radio.data_no_toggle=1 \
    persist.radio.calls.on.ims=0
