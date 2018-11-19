# Copyright (C) 2016 The Pure Nexus Project
# Copyright (C) 2017 Alliance
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, vendor/lge/bullhead/bullhead-vendor-blobs.mk)

# Links
PRODUCT_PACKAGES += \
    AudioLinks \
    VendorLinks

# Prebuilt APKs
PRODUCT_PACKAGES += \
    datastatusnotification \
    HiddenMenu \
    imssettings \
    RCSBootstraputil \
    RcsImsBootstraputil \
    TimeService \
    Tycho 

# Prebuilt jars
PRODUCT_PACKAGES += \
    cneapiclient \
    qcrilhook \
    rcsimssettings \
    rcsservice

# Prebuilt privileged APKs
PRODUCT_PACKAGES += \
    atfwd \
    CarrierServices \
    CNEService \
    ConnMO \
    DCMO \
    DiagMon \
    DMConfigUpdate \
    DMService \
    Entitlement \
    GCS \
    HotwordEnrollmentOKGoogleWCD9330 \
    HotwordEnrollmentTGoogleWCD9330 \
    HotwordEnrollmentXGoogleWCD9330 \
    LifeTimerService \
    qcrilmsgtunnel \
    SprintDM

# Symlinks
PRODUCT_PACKAGES += \
    libimsmedia_jni.so \
    libimscamera_jni.so \
    libdmengine.so \
    libdmjavaplugin.so
    
include $(CLEAR_VARS)
LOCAL_MODULE := VendorLinks
LOCAL_MODULE_OWNER := lge
LOCAL_MODULE_TAGS := optional

LOCAL_POST_INSTALL_CMD := \
        test -s vendor/lge/bullhead/proprietary/prebuilt/target/product/msm8992/system/etc/izat.conf || { \
        mkdir -p $(PRODUCT_OUT)/vendor/lib64; \
        mkdir -p $(PRODUCT_OUT)/vendor/lib; \
        ln -sf /vendor/lib64/egl/eglSubDriverAndroid.so $(PRODUCT_OUT)/vendor/lib64/eglSubDriverAndroid.so; \
        ln -sf /vendor/lib/egl/eglSubDriverAndroid.so $(PRODUCT_OUT)/vendor/lib/eglSubDriverAndroid.so; \
        ln -sf /vendor/lib64/egl/libEGL_adreno.so $(PRODUCT_OUT)/vendor/lib64/libEGL_adreno.so; \
        ln -sf /vendor/lib/egl/libEGL_adreno.so $(PRODUCT_OUT)/vendor/lib/libEGL_adreno.so; \
        ln -sf /vendor/lib64/egl/libGLESv1_CM_adreno.so $(PRODUCT_OUT)/vendor/lib64/libGLESv1_CM_adreno.so; \
        ln -sf /vendor/lib/egl/libGLESv1_CM_adreno.so $(PRODUCT_OUT)/vendor/lib/libGLESv1_CM_adreno.so; \
        ln -sf /vendor/lib64/egl/libGLESv2_adreno.so $(PRODUCT_OUT)/vendor/lib64/libGLESv2_adreno.so; \
        ln -sf /vendor/lib/egl/libGLESv2_adreno.so $(PRODUCT_OUT)/vendor/lib/libGLESv2_adreno.so; \
        ln -sf /vendor/lib64/egl/libq3dtools_adreno.so $(PRODUCT_OUT)/vendor/lib64/libq3dtools_adreno.so; \
        ln -sf /vendor/lib/egl/libq3dtools_adreno.so $(PRODUCT_OUT)/vendor/lib/libq3dtools_adreno.so; \
        ln -sf /vendor/lib64/egl/libq3dtools_esx.so $(PRODUCT_OUT)/vendor/lib64/libq3dtools_esx.so; \
        ln -sf /vendor/lib/egl/libq3dtools_esx.so $(PRODUCT_OUT)/vendor/lib/libq3dtools_esx.so; }
    
