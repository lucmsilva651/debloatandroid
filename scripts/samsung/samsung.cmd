@echo off

title Requesting administrator privileges...
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

title Debloat Android (Samsung Debloat)
echo =====================================================
echo 	Samsung Debloat - DT ver.
echo 	Script made by @lucmsilva - Debloating Things
echo 	Telegram group @lucmsilva651
echo 	Subscribe at my YouTube channel:
echo 	http://www.youtube.com/c/lucmsilva651
echo =====================================================
pause

title Starting ADB...
cd platform-tools
cls

title Check the device connection:
adb devices
pause
cls


title Uninstalling some apps...
adb shell pm uninstall --user 0 com.sec.app.spush
adb shell pm uninstall --user 0 com.samsung.android.app.dtv.sbtvd
adb shell pm uninstall --user 0 com.sec.android.app.fm
adb shell pm uninstall --user 0 com.samsung.android.game.gos
adb shell pm uninstall --user 0 com.samsung.android.game.gamehome
adb shell pm uninstall --user 0 com.samsung.android.game.gametools
adb shell pm uninstall --user 0 com.enhance.gameservice
adb shell pm uninstall --user 0 com.samsung.android.email.provider
adb shell pm uninstall --user 0 com.microsoft.word
adb shell pm uninstall --user 0 com.micorosoft.excel
adb shell pm uninstall --user 0 com.microsoft.powerpoint
adb shell pm uninstall --user 0 com.skype.raider
adb shell pm uninstall --user 0 com.opera.max.oem
adb shell pm uninstall --user 0 com.sec.android.usermanual
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm uninstall --user 0 com.sec.android.app.sbrowser
adb shell pm uninstall --user 0 com.facebook.appmanager
adb shell pm uninstall --user 0 com.facebook.services
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm uninstall --user 0 com.facebook.katana
adb shell pm uninstall --user 0 com.sec.android.app.voicenote
adb shell pm uninstall --user 0 flipboard.boxer.app
adb shell pm uninstall --user 0 com.microsoft.skydrive
adb shell pm uninstall --user 0 com.sec.android.widgetapp.samsungapps
adb shell pm uninstall --user 0 com.samsung.android.app.watchmanagerstub
adb shell pm uninstall --user 0 com.samsung.android.bixby.service
adb shell pm uninstall --user 0 com.samsung.android.voc
adb shell pm uninstall --user 0 com.sec.android.shealth
adb shell pm uninstall --user 0 com.dsi.ant.server
adb shell pm uninstall --user 0 com.dsi.ant.plugins.antplus
adb shell pm uninstall --user 0 com.dsi.ant.service.socket
adb shell pm uninstall --user 0 com.dsi.ant.acquirechannels
adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller
adb shell pm uninstall --user 0 com.sec.android.app.billing
adb shell pm uninstall --user 0 com.samsung.android.app.reminder
adb shell pm uninstall --user 0 com.samsung.android.keyguardmgsupdator
cls

title Process finished!
taskkill /f /im adb.exe
cls
echo =====================================================
echo 	Samsung Debloat - DT ver.
echo 	Script made by @lucmsilva - Debloating Things
echo 	Telegram group @lucmsilva651
echo 	Subscribe at my YouTube channel:
echo 	http://www.youtube.com/c/lucmsilva651
echo =====================================================
pause
exit