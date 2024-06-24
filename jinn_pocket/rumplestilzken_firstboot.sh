#!/system/bin/sh

rumplestilzken_settings_enabled="$(settings get global persist.rumplestilzken.settings)"
if $rumplestilzken_settings_enabled == true; then
    $(echo "rumplestilzken.settings exist" > /dev/kmsg)
    return
fi

$(echo "writing rumplestilzken.settings" > /dev/kmsg)

#Allow networking
settings put global restricted_networking_mode 0

#LTE
settings put system persist.dbg.ims_volte_enable 1 
settings put system persist.dbg.volte_avail_ovr 1 
settings put system persist.dbg.vt_avail_ovr 1
settings put system persist.dbg.wfc_avail_ovr 1
settings put system persist.radio.rat_on combine
settings put system persist.radio.data_ltd_sys_ind 1
settings put system persist.radio.data_con_rprt 1
settings put system persist.radio.calls.on.ims 1

# Mediatek bluetooth
settings put system persist.sys.bt.unsupport.features 00000000
settings put system persist.sys.bt.unsupport.states 00000000
settings put system persist.sys.bt.unsupport.stdfeatures 000001

# System Wide HAL Support
settings put system persist.sys.phh.disable_a2dp_offload 1

#Headphone jack
setprop persist.sys.overlay.devinputjack true

#SolidHal
settings put system screen_off_timeout 600000
settings put system display_density_forced 220
settings put system navigation_mode 2
settings put system --lineage navigation_bar_hint 0
settings put secure show_ime_with_hard_keyboard 1

#Global settings reset key
settings put global persist.rumplestilzken.settings true

#Kika
pm enable com.iqqijni.bbkeyboard
ime enable com.iqqijni.bbkeyboard/.keyboard_service.view.HDKeyboardService
ime set com.iqqijni.bbkeyboard/.keyboard_service.view.HDKeyboardService
