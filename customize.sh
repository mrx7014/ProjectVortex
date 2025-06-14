#!/system/bin/sh
ui_print "______          _           _   "
ui_print "| ___ \        (_)         | |  "
ui_print "| |_/ / __ ___  _  ___  ___| |_ "
ui_print "|  __/ '__/ _ \| |/ _ \/ __| __|"
ui_print "| |  | | | (_) | |  __/ (__| |_ "
ui_print "\_|  |_|  \___/| |\___|\___|\__|"
ui_print "              _/ |              "
ui_print "             |__/               "
ui_print " _   _            _             "
ui_print "| | | |          | |            "
ui_print "| | | | ___  _ __| |_ _____  __ "
ui_print "| | | |/ _ \| '__| __/ _ \ \/ / "
ui_print "\ \_/ / (_) | |  | ||  __/>  <  "
ui_print " \___/ \___/|_|   \__\___/_/\_\ "
ui_print "                                "
ui_print "MRX7014"
ui_print ""
sleep 1
if [ -d "/data/adb/modules/AFFT" ]; then
  ui_print "WARNING: AFFT module has been detected and it will be removed at the next reboot."
  touch /data/adb/modules/AFFT/remove
fi
if [ -d "/data/adb/modules/S25_Spoofer" ]; then
  ui_print "WARNING: S25 Ultra Spoofer module has been detected and it will be removed at the next reboot."
  touch /data/adb/modules/S25_Spoofer/remove
fi
if [ -d "/data/adb/modules/S24_Spoofer" ]; then
  ui_print "WARNING: S24 Ultra Spoofer module has been detected and it will be removed at the next reboot."
  touch /data/adb/modules/S24_Spoofer/remove
fi
ui_print "🌪️ Initializing Vortex Optimization Engine..."
sleep 1.5
ui_print "📜 Notes (DONT SKIP IT):
• Check apps updates after install module from Galaxy Store
• Check apps updates always from Galaxy Store
• Don't update Photo Editor App EVER
• Install SuperMario-Tweaker to improve performance
"
sleep 4
ui_print "🔧 Running configuration commands..."
su -c rm -rf /data/user_de/0/com.android.settings/files/DeviceImage.png
su -c cp /data/adb/modules/PVX/data/user_de/0/com.android.settings/files/DeviceImage.png /data/user_de/0/com.android.settings/files
su -c chmod 644 /data/user_de/0/com.android.settings/files/DeviceImage.png
su -c chmod 644 /system/priv-app/wallpaper-res/wallpaper-res.apk
su -c chmod 644 /data/adb/modules/PVX/system/priv-app/wallpaper-res/wallpaper-res.apk
sleep 2
ui_print "🗑 Debloating Samsung junk apps..."
pm uninstall --user 0 com.google.android.adservices.api 2>/dev/null
pm uninstall --user 0 com.samsung.android.sm.devicesecurity 2>/dev/null
pm uninstall --user 0 com.samsung.android.app.clipboardedge 2>/dev/null
pm uninstall --user 0 com.samsung.android.app.cocktailbarservice 2>/dev/null
pm uninstall --user 0 com.google.android.healthconnect.controller 2>/dev/null
pm uninstall --user 0 com.samsung.android.service.peoplestripe 2>/dev/null
pm uninstall --user 0 com.qualcomm.qti.smq 2>/dev/null
pm uninstall --user 0 com.monotype.android.font.roboto 2>/dev/null
pm uninstall --user 0 com.sec.android.sdhms 2>/dev/null
pm uninstall --user 0 com.opera.max.oem 2>/dev/null
pm uninstall --user 0 com.sec.android.app.SecSetupWizard 2>/dev/null
pm uninstall --user 0 com.google.android.apps.restore 2>/dev/null
pm uninstall --user 0 com.samsung.android.app.reminder 2>/dev/null
pm uninstall --user 0 com.sec.android.easyMover 2>/dev/null
pm uninstall --user 0 com.google.android.apps.accessibility.voiceaccess 2>/dev/null
ui_print "🧹 Cleaning up Cache"
rm -rf /cache/*
rm -rf /data/cache/*
rm -rf /data/dalvik-cache/*
rm -rf /data/system/package_cache/*
ui_print "✅ Project Vortex optimizations applied successfully!"
sleep 2
ui_print "🎉 Enjoy a smoother and more responsive Galaxy A23 experience! 🎉"
