$(call inherit-product, device/unihertz/common.mk)

#Treble
#PRODUCT_FULL_TREBLE :=  true
#PRODUCT_FULL_TREBLE_OVERRIDE := true

#PRODUCT_RELEASE_NAME := Titan

# Device identifier. This must come after all inclusions
#PRODUCT_DEVICE = gargoyle_tank
#PRODUCT_BRAND = Unihertz
#PRODUCT_SYSTEM_BRAND = Unihertz
#PRODUCT_MANUFACTURER = Unihertz
#PRODUCT_NAME = TANK 01
#PRODUCT_MODEL = TANK_01

RESOURCE_PATH := device/unihertz/jinn_tank

#Init Scripts
PRODUCT_COPY_FILES += \
	$(RESOURCE_PATH)/rumplestilzken_firstboot.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/rumplestilzken_firstboot.sh \

#bootanimation
TARGET_BOOTANIMATION := $(RESOURCE_PATH)/bootanimation.zip

