#
# Audio Package 13 - L (48kHz)
#
# Include this file in a product makefile to include these audio files
#
#

LOCAL_PATH := frameworks/base/data/sounds

# Simple files that do not require renaming
ALARM_FILES := Argon Carbon Helium Hassium Krypton Neon Oxygen Osmium Platinum Timer
NOTIFICATION_FILES := Ariel Ceres Carme Elara Europa Iapetus Io Rhea Salacia Titan Tethys
RINGTONE_FILES := Atria Callisto Dione Ganymede Luna Oberon Phobos Pyxis Sedna Titania Triton \
	Umbriel
MATERIAL_EFFECT_FILES := audio_end audio_initiate camera_click camera_focus Dock Effect_Tick KeypressReturn KeypressInvalid KeypressDelete KeypressSpacebar KeypressStandard \
	Lock LowBattery NFCFailure NFCInitiated NFCSuccess NFCTransferComplete NFCTransferInitiated Undock Unlock Trusted \
	VideoRecord VideoStop WirelessChargingStarted

PRODUCT_COPY_FILES += $(foreach fn,$(ALARM_FILES),\
	$(LOCAL_PATH)/alarms/material/ogg/$(fn)_48k.ogg:system/media/audio/alarms/$(fn).ogg)

PRODUCT_COPY_FILES += $(foreach fn,$(NOTIFICATION_FILES),\
	$(LOCAL_PATH)/notifications/material/ogg/$(fn)_48k.ogg:system/media/audio/notifications/$(fn).ogg)

PRODUCT_COPY_FILES += $(foreach fn,$(RINGTONE_FILES),\
	$(LOCAL_PATH)/ringtones/material/ogg/$(fn)_48k.ogg:system/media/audio/ringtones/$(fn).ogg)

PRODUCT_COPY_FILES += $(foreach fn,$(MATERIAL_EFFECT_FILES),\
	$(LOCAL_PATH)/effects/material/ui/$(fn).ogg:system/media/audio/ui/$(fn).ogg)

