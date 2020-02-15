LOCAL_PATH := device/explay/porcupine
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

PRODUCT_BRAND := Explay
PRODUCT_DEVICE := sQuad
PRODUCT_NAME := 7.82 3G
PRODUCT_MANUFACTURER := Mediatek
PRODUCT_MODEL := sQuad 7.82 3G

PRODUCT_AAPT_CONFIG := normal ldpi 
PRODUCT_AAPT_PREF_CONFIG := ldpi
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 768

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=3
PRODUCT_LOCALES := en_US ru_RU
PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/zImage:kernel
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    libnetcmdiface \
    Stk \
    static_busybox \
    make_ext4fs \
    setup_fs \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    tinymix \
	Snap \
	messaging \
    libion \
    gps.mt8389\
    YGPS \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    Gallery2 \
    gps.default \
    CMSettingsProvider \
    wpa_supplicant \
    dhcpcd.conf \
    librs_jni \
    p2p_supplicant_marlin_inc.conf
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.secure=1 \
    ro.allow.mock.location=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1
PRODUCT_COPY_FILES += \
	vendor/explay/porcupine/lib/foo.so:/system/lib/foo.so \
	vendor/explay/porcupine/lib/hw/foo.so:/system/lib/hw/foo.so \
	vendor/explay/porcupine/bin/foo:/system/bin/foo 
BOARD_EGL_CFG := device/ explay/porcupine/egl.cfg
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetoth.xml:system/etc/permissions/android.harware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.location.gps.xml:system/etc/permissions/android.location.gps.xml \
    frameworks/native/data/etc/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/media_codecs.xml:system/etc/permissions/media_codecs.xml \
    frameworks/native/data/etc/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
    frameworks/native/data/etc/platform.xml:system/etc/permissions/platform.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    frameworks/native/data/etc/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    frameworks/native/data/etc/features.xml:system/etc/permissions/features.xml \
    frameworks/native/data/etc/com.google.widevine.software.drm.xml

$(call inherit-product-if-exists, vendor/explay/porcupine/porcupine.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml \
