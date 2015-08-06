#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/lge/msm8610-common/msm8610-common-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# System properties
-include $(LOCAL_PATH)/system_prop.mk

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.msm8610:root/fstab.msm8610 \
    $(LOCAL_PATH)/rootdir/etc/init.class_main.sh:root/init.class_main.sh \
    $(LOCAL_PATH)/rootdir/etc/init.gammaw.class_core.sh:root/init.gammaw.class_core.sh \
    $(LOCAL_PATH)/rootdir/etc/init.gammaw.cmm.usb.sh:root/init.gammaw.cmm.usb.sh \
    $(LOCAL_PATH)/rootdir/etc/init.gammaw.early_boot.sh:root/init.gammaw.early_boot.sh \
    $(LOCAL_PATH)/rootdir/etc/init.gammaw.factory.sh:root/init.gammaw.factory.sh \
    $(LOCAL_PATH)/rootdir/etc/init.gammaw.rc:root/init.gammaw.rc \
    $(LOCAL_PATH)/rootdir/etc/init.gammaw.ril.sh:root/init.gammaw.ril.sh \
    $(LOCAL_PATH)/rootdir/etc/init.gammaw.sh:root/init.gammaw.sh \
    $(LOCAL_PATH)/rootdir/etc/init.gammaw.ssr.sh:root/init.gammaw.ssr.sh \
    $(LOCAL_PATH)/rootdir/etc/init.gammaw.syspart_fixup.sh:root/init.gammaw.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/etc/init.gammaw.usb.rc:root/init.gammaw.usb.rc \
    $(LOCAL_PATH)/rootdir/etc/init.gammaw.usb.sh:root/init.gammaw.usb.sh \
    $(LOCAL_PATH)/rootdir/etc/init.lge.early.rc:root/init.lge.early.rc \
    $(LOCAL_PATH)/rootdir/etc/init.lge.log.rc:root/init.lge.log.rc \
    $(LOCAL_PATH)/rootdir/etc/init.lge.rc:root/init.lge.rc \
    $(LOCAL_PATH)/rootdir/etc/init.mdm.sh:root/init.mdm.sh \
    $(LOCAL_PATH)/rootdir/etc/init.msm8610.rc:root/init.msm8610.rc \
    $(LOCAL_PATH)/rootdir/etc/init.msm8610.usb.rc:root/init.msm8610.usb.rc \
    $(LOCAL_PATH)/rootdir/etc/init.msm8610_product.rc:root/init.msm8610_product.rc \
    $(LOCAL_PATH)/rootdir/etc/ueventd.msm8610.rc:root/ueventd.msm8610.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config \
    $(LOCAL_PATH)/configs/thermal-engine-8610.conf:system/etc/thermal-engine-8610.conf

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/touch_dev.idc:system/usr/idc/touch_dev.idc

# Display
PRODUCT_PACKAGES += \
    gralloc.msm8610 \
    copybit.msm8610 \
    hwcomposer.msm8610 \
    memtrack.msm8610 \
    power.msm8610

# Keystore
PRODUCT_PACKAGES += keystore.msm8610

PRODUCT_PACKAGES += \
    audiod \
    audio.msm8610 \
    audio_policy.msm8610 \
    audio.primary.msm8610 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    tinymix \
    libqcomvisualizer \
    libqcomvoiceprocessing

# Filesystem
PRODUCT_PACKAGES += \
    setup_fs

# Misc
PRODUCT_PACKAGES += \
    libxml2

# OMX
PRODUCT_PACKAGES += \
    libdashplayer \
    libOmxCore \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Lights
PRODUCT_PACKAGES += \
    lights.msm8610

# GPS
PRODUCT_PACKAGES += \
    gps.msm8610

# Misc
PRODUCT_PACKAGES += \
    curl \
    libbson \
    libcurl \
    tcpdump

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so

# Media
PRODUCT_PROPERTY_OVERRIDEs += \
    media.stagefright.use-awesome=true

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    hostapd_default.conf \
    dhcpcd.conf \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    libwcnss_qmi \
    wcnss_service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wcnss/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wcnss/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wcnss/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wcnss/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Inhert dalvik heap values from aosp
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product-if-exists, hardware/qcom/msm8x74/msm8x74.mk)
