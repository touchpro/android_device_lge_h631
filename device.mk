#
# Copyright (C) 2017 The LineageOS Project
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
LOCAL_PATH := device/lge/h631

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    nfc_nci.pn54x.default \
    Tag

# Stlport
PRODUCT_PACKAGES += libstlport

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp-lg.conf:system/etc/libnfc-nxp-lg.conf \
    $(LOCAL_PATH)/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true \
    ro.qc.sdk.audio.fluencetype=none

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8916.conf:system/etc/thermal-engine-8916.conf

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wcnss/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.target.rc
