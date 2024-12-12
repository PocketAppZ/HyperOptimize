#!/sbin/sh
SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

info_print() {
  ui_print "*******************************"
  ui_print "        Hyper Optimize         "
  ui_print "       Created by:Tatsh        "
  ui_print "*******************************"
  ui_print "Uninstall this if stuck at boot"
  ui_print "*******************************"
}

init_main(){
  ui_print " "
  ui_print "Debloating Apps..."
  ui_print " "
  REPLACE="
    /system/app/AnalyticsCore
    /system/app/BasicDreams
    /system/app/BatteryWarning
    /system/app/BluetoothMidiService
    /system/app/BookmarkProvider
    /system/app/CameraExtensionsProxy
    /system/app/CaptivePortalLogin
    /system/app/CarrierDefaultApp
    /system/app/CatchLog
    /system/app/CertInstaller
    /system/app/Cit
    /system/app/com.xiaomi.macro
    /system/app/CompanionDeviceManager
    /system/app/DebugLoggerUI
    /system/app/GFTest
    /system/app/GnssDebugReport
    /system/app/GooglePrintRecommendationService
    /system/app/HybridAccessory
    /system/app/HybridPlatform
    /system/app/Joyose
    /system/app/MDMConfig
    /system/app/MDMLSample
    /system/app/mab
    /system/app/MIUIAccessibility
    /system/app/MIUISuperMarket
    /system/app/MIUITouchAssistant
    /system/app/MIUIVpnSdkManager
    /system/app/MIUIgreenguard
    /system/app/MIUPTsmService
    /system/app/MSA
    /system/app/MiBugReport
    /system/app/MiuiPrintSpoolerBeta
    /system/app/KeyChain
    /system/app/OtaProvision
    /system/app/PacProcessor
    /system/app/PartnerBookmarksProvider
    /system/app/PowerChecker
    /system/app/PrintRecommendationService
    /system/app/Protipstheme
    /system/app/SimAppDialog
    /system/app/Stk
    /system/app/Traceur
    /system/app/VsimCore
    /system/app/WallpaperBackup
    /system/app/WapiCertManage
    /system/app/XiaomiModemDebugService
    /system/priv-app/BackupRestoreConfirmation
    /system/priv-app/BlockedNumberProvider
    /system/priv-app/BuiltInPrintService
    /system/priv-app/CallLogBackup
    /system/priv-app/CellBroadcastLegacyApp
    /system/priv-app/CellBroadcastServiceModulePlatform
    /system/priv-app/CredentialManager
    /system/priv-app/DynamicSystemInstallationService
    /system/priv-app/EngineerMode
    /system/priv-app/InputDevices
    /system/priv-app/IntentResolver
    /system/priv-app/LiveWallpapersPicker
    /system/priv-app/LocalTransport
    /system/priv-app/ManagedProvisioning
    /system/priv-app/MediaProviderLegacy
    /system/priv-app/MIService
    /system/priv-app/MIUIMusic
    /system/priv-app/MIUIVipService
    /system/priv-app/MiBrowser
    /system/priv-app/MiGameCenterSDKService
    /system/priv-app/MusicFX
    /system/priv-app/ONS
    /system/priv-app/Provision
    /system/priv-app/ProxyHandler
    /system/priv-app/SharedStorageBackup
    /system/priv-app/StatementService
    /system/priv-app/Stk1
    /system/priv-app/SystemHelper
    /system/priv-app/Tag
    /system/priv-app/Traceur
    /system/priv-app/UserDictionaryProvider
    /system/priv-app/VoiceCommand
    /system/priv-app/VoiceUnlock
    /system/priv-app/WapiCertManager
    /system/priv-app/YGPS
    /system/product/app/AiAsstVision
    /system/product/app/AnalyticsCore
    /system/product/app/Biometric
    /system/product/app/CameraTools_beta
    /system/product/app/CarWith
    /system/product/app/CatchLog
    /system/product/app/com.xiaomi.macro
    /system/product/app/com.xiaomi.ugd
    /system/product/app/ConferenceDialer
    /system/product/app/DeviceInfoQR
    /system/product/app/EidService
    /system/product/app/Email
    /system/product/app/FidoAuthen2
    /system/product/app/FrequentPhrase
    /system/product/app/GoogleLocationHistory
    /system/product/app/GooglePrintRecommendationService
    /system/product/app/Gboard
    /system/product/app/Health
    /system/product/app/HybridPlatform
    /system/product/app/IFAAService
    /system/product/app/LatinImeGoogle
    /system/product/app/MediaViewer
    /system/product/app/MetokNLP
    /system/product/app/MiAONService
    /system/product/app/MIAONServiceMTK
    /system/product/app/MiBugReport
    /system/product/app/MiDevAuthService
    /system/product/app/MiGalleryLockscreen
    /system/product/app/MiMacro
    /system/product/app/MINextpay
    /system/product/app/MiLinkService
    /system/product/app/MipayService
    /system/product/app/MIS
    /system/product/app/MiTrustService
    /system/product/app/MITSMClient
    /system/product/app/MIUIAccessibility
    /system/product/app/MiuiCit
    /system/product/app/MIUIFrequentPhrase
    /system/product/app/MIUIgreenguard
    /system/product/app/MIUIReporter
    /system/product/app/MIUITouchAssistant
    /system/product/app/VpnSdkManager
    /system/product/app/MSA
    /system/product/app/OtaProvision
    /system/product/app/OTrPBroker
    /system/product/app/PaymentService
    /system/product/app/PhotoTable
    /system/product/app/QcomSoterService
    /system/product/app/remoteSimLockAuthentication
    /system/product/app/remotesimlockservice
    /system/product/app/RideModeAudio
    /system/product/app/SecurityOnetrackService
    /system/product/app/SoterService
    /system/product/app/SwitchAccess
    /system/product/app/system
    /system/product/app/talkback
    /system/product/app/TouchAssistant
    /system/product/app/uimgbaservice
    /system/product/app/uimlpaservice
    /system/product/app/uimremoteclient
    /system/product/app/uimremoteserver
    /system/product/app/UPTsmService
    /system/product/app/WMService
    /system/product/app/XiaoaiRecommendation
    /system/product/app/XiaomiSimActivateService
    /system/product/app/XMSFKeeperAll
    /system/product/priv-app/AndroidAutoStub
    /system/product/priv-app/AutoRegistration
    /system/product/priv-app/BarrageV2
    /system/product/priv-app/ConfigUpdater
    /system/product/priv-app/ContentExtension
    /system/product/priv-app/GoogleOneTimeInitializer
    /system/product/priv-app/GooglePartnerSetup
    /system/product/priv-app/GoogleRestore
    /system/product/priv-app/Huanji
    /system/product/priv-app/ImsServiceEntitlement
    /system/product/priv-app/MiGameCenterSDKService
    /system/product/priv-app/Mirror
    /system/product/priv-app/MIService
    /system/product/priv-app/MiShare
    /system/product/priv-app/MiuiAICR
    /system/product/priv-app/MIUIBrowser
    /system/product/priv-app/MiuiExtraPhoto
    /system/product/priv-app/MIUIMirror
    /system/product/priv-app/MIUIQuickSearchBox
    /system/product/priv-app/MIUIYellowPage
    /system/product/priv-app/PersonalAssistant
    /system/product/priv-app/RegService
    /system/product/priv-app/SettingsIntelligence
    /system/product/overlay/NavigationBarMode3Button
    /system/product/overlay/NavigationBarModeGestural
    /system/product/overlay/NavigationBarModeGesturalExtraWideBack
    /system/product/overlay/NavigationBarModeGesturalNarrowBack
    /system/product/overlay/NavigationBarModeGesturalWideBack
    /system/system_ext/app/AtFwd2
    /system/system_ext/app/colorservice
    /system/system_ext/app/datastatusnotification
    /system/system_ext/app/DeviceInfo
    /system/system_ext/app/DeviceStatisticsService
    /system/system_ext/app/digitalkey
    /system/system_ext/app/DynamicDDSService
    /system/system_ext/app/FM
    /system/system_ext/app/ModemTestBox
    /system/system_ext/app/ImsDataChannelService
    /system/system_ext/app/ImsRcsService
    /system/system_ext/app/MiraVision
    /system/system_ext/app/MiSightService
    /system/system_ext/app/MiuiAudioMonitor
    /system/system_ext/app/MiuiDaemon
    /system/system_ext/app/MiuiPrintSpooler
    /system/system_ext/app/MiuixEditor
    /system/system_ext/app/ModemTestBox
    /system/system_ext/app/PowerSaveMode
    /system/system_ext/app/QCC
    /system/system_ext/app/QColor
    /system/system_ext/app/QesdkSysService
    /system/system_ext/app/SimContact
    /system/system_ext/app/uceShimService
    /system/system_ext/app/VsimCore
    /system/system_ext/app/WAPPushManager
    /system/system_ext/app/workloadclassifier
    /system/system_ext/priv-app/AccessibilityMenu
    /system/system_ext/priv-app/com.qualcomm.location
    /system/system_ext/priv-app/com.qualcomm.qti.services.systemhelper
    /system/system_ext/priv-app/dcf
    /system/system_ext/priv-app/dpmserviceapp
    /system/system_ext/priv-app/EmergencyInfo
    /system/system_ext/priv-app/MiuiFreeformService
    /system/system_ext/priv-app/MiuiWifiDialog
    /system/system_ext/priv-app/MtkWallpaperPicker
    /system/system_ext/priv-app/Omacp
    /system/system_ext/priv-app/PerformanceMode
    /system/system_ext/priv-app/Polaris
    /system/system_ext/priv-app/Provision
    /system/system_ext/priv-app/QtiWifiService
    /system/system_ext/priv-app/QualcommVoiceActivation
    /system/system_ext/priv-app/StorageManager
    /system/system_ext/priv-app/TouchService
    /system/system_ext/priv-app/WallpaperCropper
    /system/system_ext/priv-app/WfdService
    /system/system_ext/priv-app/xrcbservice
    /system/system_ext/priv-app/xrvdservice
    /system/product/overlay/FontNotoSerifSource
    /system/product/overlay/MiuiServiceOverlay
    /system/product/overlay/NotesRoleEnabled
    /system/product/overlay/TransparentNavigationBar
    /system/product/overlay/VoiceAssistAndroidOverlay
    /system/vendor/app/CACertService
    /system/vendor/app/CneApp
    /system/vendor/app/com.qualcomm.qti.gpudrivers.kalama.api33
    /system/vendor/app/EidService
    /system/vendor/app/IWlanService
    /system/vendor/app/QFingerprintService
    /system/vendor/app/SensorTestTool
    /system/vendor/app/TimeService
    /system/vendor/app/TrustedUIService
    /system/vendor/app/TrustZoneAccessService
  "
  ui_print " "
  ui_print "Extracting System Files..."
  ui_print " "
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2 
}

set_permissions() {
  set_perm_recursive "$MODPATH" 0 0 0777 0755    
}

