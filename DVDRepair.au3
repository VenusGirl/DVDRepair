#NoTrayIcon
#OnAutoItStartRegister "_ReBarStartUp"

#Region AutoIt3Wrapper Directives Section

#AutoIt3Wrapper_ShowProgress=Y									;~ (Y/N) Show ProgressWindow during Compile. Default=Y
;===============================================================================================================
; AutoIt3 Settings
;===============================================================================================================
#AutoIt3Wrapper_UseX64=Y										;~ (Y/N) Use AutoIt3_x64 or Aut2Exe_x64. Default=N
#AutoIt3Wrapper_Version=B                        				;~ (B/P) Use Beta or Production for AutoIt3 and Aut2Eex. Default is P
#AutoIt3Wrapper_Run_Debug_Mode=N								;~ (Y/N) Run Script with console debugging. Default=N
;#AutoIt3Wrapper_Autoit3Dir=									;~ Optionally override the AutoIt3 install directory to use.
;#AutoIt3Wrapper_Aut2exe=										;~ Optionally override the Aut2exe.exe to use for this script
;#AutoIt3Wrapper_AutoIt3=										;~ Optionally override the Autoit3.exe to use for this script
;===============================================================================================================
; Aut2Exe Settings
;===============================================================================================================
#AutoIt3Wrapper_Icon=Themes\Icons\DVDRepair.ico					;~ Filename of the Ico file to use for the compiled exe
#AutoIt3Wrapper_OutFile_Type=exe								;~ exe=Standalone executable (Default); a3x=Tokenised AutoIt3 code file
#AutoIt3Wrapper_OutFile=DVDRepair.exe							;~ Target exe/a3x filename.
#AutoIt3Wrapper_OutFile_X64=DVDRepair_X64.exe					;~ Target exe filename for X64 compile.
;#AutoIt3Wrapper_Compression=4									;~ Compression parameter 0-4  0=Low 2=normal 4=High. Default=2
;#AutoIt3Wrapper_UseUpx=Y										;~ (Y/N) Compress output program.  Default=Y
;#AutoIt3Wrapper_UPX_Parameters=								;~ Override the default settings for UPX.
#AutoIt3Wrapper_Change2CUI=N									;~ (Y/N) Change output program to CUI in stead of GUI. Default=N
#AutoIt3Wrapper_Compile_both=Y									;~ (Y/N) Compile both X86 and X64 in one run. Default=N
;===============================================================================================================
; Target Program Resource info
;===============================================================================================================
#AutoIt3Wrapper_Res_Comment=DVD Drive Repair						;~ Comment field
#AutoIt3Wrapper_Res_Description=Rizonesoft DVD Drive Repair      	;~ Description field
#AutoIt3Wrapper_Res_Fileversion=2.0.0.1026
#AutoIt3Wrapper_Res_FileVersion_AutoIncrement=Y  					;~ (Y/N/P) AutoIncrement FileVersion. Default=N
#AutoIt3Wrapper_Res_FileVersion_First_Increment=N					;~ (Y/N) AutoIncrement Y=Before; N=After compile. Default=N
#AutoIt3Wrapper_Res_HiDpi=N                      					;~ (Y/N) Compile for high DPI. Default=N
#AutoIt3Wrapper_Res_ProductVersion=5             					;~ Product Version
#AutoIt3Wrapper_Res_Language=2057									;~ Resource Language code . Default 2057=English (United Kingdom)
#AutoIt3Wrapper_Res_LegalCopyright=© 2018 Rizonesoft				;~ Copyright field
#AutoIt3Wrapper_res_requestedExecutionLevel=highestAvailable		;~ asInvoker, highestAvailable, requireAdministrator or None (remove the trsutInfo section).  Default is the setting from Aut2Exe (asInvoker)
#AutoIt3Wrapper_res_Compatibility=Vista,Win7,Win8,Win81				;~ Vista/Windows7/win7/win8/win81 allowed separated by a comma     (Default=Win81)
;#AutoIt3Wrapper_Res_SaveSource=N									;~ (Y/N) Save a copy of the Script_source in the EXE resources. Default=N
; If _Res_SaveSource=Y the content of Script_source depends on the _Run_Au3Stripper and #Au3Stripper_parameters directives:
;    If _Run_Au3Stripper=Y then
;        If #Au3Stripper_parameters=/STRIPONLY then Script_source is stripped script & stripped includes
;        If #Au3Stripper_parameters=/STRIPONLYINCLUDES then Script_source is original script & stripped includes
;       With any other parameters, the SaveSource directive is ignored as obfuscation is intended to protect the source
;   If _Run_Au3Stripper=N or is not set then
;       Scriptsource is original script only
; AutoIt3Wrapper indicates the SaveSource action taken in the SciTE console during compilation
; See SciTE4AutoIt3 Helpfile for more detail on Au3Stripper parameters
;===============================================================================================================
; Free form resource fields ... max 15
;===============================================================================================================
; You can use the following variables:
;	%AutoItVer% which will be replaced with the version of AutoIt3
;	%date% = PC date in short date format
;	%longdate% = PC date in long date format
;	%time% = PC timeformat
;	eg: #AutoIt3Wrapper_Res_Field=AutoIt Version|%AutoItVer%
#AutoIt3Wrapper_Res_Field=CompanyName|Rizonesoft
#AutoIt3Wrapper_Res_Field=ProductName|DVD Drive Repair
#AutoIt3Wrapper_Res_Field=HomePage|https://www.rizonesoft.com
#AutoIt3Wrapper_Res_Field=AutoItVersion|%AutoItVer%
; Add extra ICO files to the resources
; Use full path of the ico files to be added
; ResNumber is a numeric value used to access the icon: TraySetIcon(@ScriptFullPath, ResNumber)
; If no ResNumber is specified, the added icons are numbered from 201 up
; #AutoIt3Wrapper_Res_Icon_Add=                   				;~ Filename[,ResNumber[,LanguageCode]] of ICO to be added.
; #AutoIt3Wrapper_Res_File_Add=                   				;~ Filename[,Section [,ResName[,LanguageCode]]] to be added.
; Add files to the resources - can be compressed
; #AutoIt3Wrapper_Res_Remove=
; Remove resources
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\DVDRepairH.ico				; 201

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Information.ico		; 202
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Complete.ico			; 203
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Cross.ico			 	; 204
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Exclamation.ico		; 205
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Smiley-Glass.ico		; 206
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Skull.ico				; 207
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\logging\Snowman.ico			; 208

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Update.ico					; 209
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Error.ico						; 210

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Check.ico				; 211
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Error.ico				; 212
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Gear.ico				; 213
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Information.ico		; 214
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Dialogs\Love.ico				; 215

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\PayPal.ico				; 216
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\PayPalH.ico				; 217
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\sa.ico					; 218
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\saH.ico					; 219
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\Facebook.ico			; 220
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\FacebookH.ico			; 221
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\Twitter.ico				; 222
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\TwitterH.ico			; 223
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GooglePlus.ico			; 224
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GooglePlusH.ico			; 225
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GitHub.ico				; 226
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\About\GitHubH.ico				; 227

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\en.ico					; 228
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\af.ico					; 229
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ar.ico					; 230
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\bg.ico					; 231
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\cs.ico					; 232
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\da.ico					; 233
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\de.ico					; 234
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\el.ico					; 235
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\es.ico					; 236
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\fr.ico					; 237
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\hi.ico					; 238
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\hr.ico					; 239
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\hu.ico					; 240
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\id.ico					; 241
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\is.ico					; 242
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\it.ico					; 243
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\iw.ico					; 244
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ja.ico					; 245
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ko.ico					; 246
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\nl.ico					; 247
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\no.ico					; 248
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\pl.ico					; 249
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\pt.ico					; 250
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ro.ico					; 251
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\ru.ico					; 252
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\si.ico					; 253
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\sk.ico					; 254
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\sv.ico					; 255
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\th.ico					; 256
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\tr.ico					; 257
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\vi.ico					; 258
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Flags\zh-CN.ico				; 259

#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Gear.ico				; 260
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Logbook.ico				; 261
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Close.ico				; 262
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\DeviceTrouble.ico		; 263
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\RestorePoint.ico		; 264
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\DeviceMan.ico			; 265
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Firmware.ico			; 266
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Update.ico				; 267
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Home.ico				; 268
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\Mail.ico				; 269
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\GitHub.ico				; 270
#AutoIt3Wrapper_Res_Icon_Add=Themes\Icons\Menus\About.ico				; 271

;===============================================================================================================
; Tidy Settings
;===============================================================================================================
;#AutoIt3Wrapper_Run_Tidy=N										;~ (Y/N) Run Tidy before compilation. Default=N
;#AutoIt3Wrapper_Tidy_Stop_OnError=              				;~ (Y/N) Continue when only Warnings. Default=Y
;#Tidy_Parameters=                               				;~ Tidy Parameters...see SciTE4AutoIt3 Helpfile for options
;===============================================================================================================
; Au3Stripper Settings
;===============================================================================================================
#AutoIt3Wrapper_Run_Au3Stripper=N								;~ (Y/N) Run Au3Stripper before compilation. default=N
;#Au3Stripper_Parameters=MergeOnly								;~ Au3Stripper parameters...see SciTE4AutoIt3 Helpfile for options
;#Au3Stripper_Ignore_Variables=
;===============================================================================================================
; AU3Check settings
;===============================================================================================================
#AutoIt3Wrapper_Run_AU3Check=Y									;~ (Y/N) Run au3check before compilation. Default=Y
;#AutoIt3Wrapper_AU3Check_Parameters=							;~ Au3Check parameters...see SciTE4AutoIt3 Helpfile for options
#AutoIt3Wrapper_AU3Check_Stop_OnWarning=Y 						;~ (Y/N) Continue/Stop on Warnings.(Default=N)
;===============================================================================================================
; Versioning Settings
;===============================================================================================================
;#AutoIt3Wrapper_Versioning=V									;~ (Y/N/V) Run Versioning to update the script source. default=N
;	V=only run when fileversion is increased by #AutoIt3Wrapper_Res_FileVersion_AutoIncrement.
;#AutoIt3Wrapper_Versioning_Parameters=/NoPrompt				;~ /NoPrompt  : Will skip the Comments prompt
;	/Comments  : Text to added in the Comments. It can also contain the below variables.
;===============================================================================================================
; RUN BEFORE AND AFTER definitions
;===============================================================================================================
;The following directives can contain: these variables
;	%in% , %out%, %outx64%, %icon% which will be replaced by the fullpath\filename.
;	%scriptdir% same as @ScriptDir and %scriptfile% = filename without extension.
;	%fileversion% is the information from the #AutoIt3Wrapper_Res_Fileversion directive
;	%scitedir% will be replaced by the SciTE program directory
;	%autoitdir% will be replaced by the AutoIt3 program directory
;#AutoIt3Wrapper_Run_Before_Admin=               				;~ (Y/N) Run subsequent Run_Before statements with #RequireAdmin. Default=N
;#AutoIt3Wrapper_Run_After_Admin=                				;~ (Y/N) Run subsequent Run_After statements with #RequireAdmin. Default=N
;#AutoIt3Wrapper_Run_Before=                     				;~ process to run before compilation - multiple records will be processed in sequence
;#AutoIt3Wrapper_Run_After=                      				;~ process to run after compilation - multiple records will be processed in sequence
;===============================================================================================================

#EndRegion AutoIt3Wrapper Directives Section


Opt("CaretCoordMode", 1)			;~ 1=absolute, 0=relative, 2=client
Opt("ExpandEnvStrings", 1)			;~ 0=don't expand, 1=do expand
Opt("ExpandVarStrings", 1)			;~ 0=don't expand, 1=do expand
Opt("GUICloseOnESC", 0)				;~ 1=ESC  closes, 0=ESC won't close
Opt("GUICoordMode", 1)				;~ 1=absolute, 0=relative, 2=cell
Opt("GUIDataSeparatorChar", "|")	;~ "|" is the default
Opt("GUIOnEventMode", 1)			;~ 0=disabled, 1=OnEvent mode enabled
Opt("GUIResizeMode", 802)			;~ 0=no resizing, <1024 special resizing
Opt("GUIEventOptions", 0)			;~ 0=default, 1=just notification, 2=GUICtrlRead tab index
Opt("MouseClickDelay", 10)			;~ 10 milliseconds
Opt("MouseClickDownDelay", 10)		;~ 10 milliseconds
Opt("MouseClickDragDelay", 250)		;~ 250 milliseconds
Opt("MouseCoordMode", 1)			;~ 1=absolute, 0=relative, 2=client
Opt("MustDeclareVars", 1)			;~ 0=no, 1=require pre-declaration
Opt("PixelCoordMode", 1)			;~ 1=absolute, 0=relative, 2=client
Opt("SendAttachMode", 0)			;~ 0=don't attach, 1=do attach
Opt("SendCapslockMode", 1)			;~ 1=store and restore, 0=don't
Opt("SendKeyDelay", 5)				;~ 5 milliseconds
Opt("SendKeyDownDelay", 1)			;~ 1 millisecond
Opt("TCPTimeout", 100)				;~ 100 milliseconds
Opt("TrayAutoPause", 1)				;~ 0=no pause, 1=Pause
Opt("TrayIconDebug", 1)				;~ 0=no info, 1=debug line info
Opt("TrayIconHide", 1)				;~ 0=show, 1=hide tray icon
Opt("TrayMenuMode", 1)				;~ 0=append, 1=no default menu, 2=no automatic check, 4=menuitemID  not return
Opt("TrayOnEventMode", 1)			;~ 0=disable, 1=enable
Opt("WinDetectHiddenText", 0)		;~ 0=don't detect, 1=do detect
Opt("WinSearchChildren", 1)			;~ 0=no, 1=search children also
Opt("WinTextMatchMode", 1)			;~ 1=complete, 2=quick
Opt("WinTitleMatchMode", 4)			;~ 1=start, 2=subStr, 3=exact, 4=advanced, -1 to -4=Nocase
Opt("WinWaitDelay", 250)			;~ 250 milliseconds


Func _ReBarStartUp()
EndFunc   ;==>_ReBarStartUp


#include <GuiConstantsEx.au3>
#include <GuiImageList.au3>
#include <GuiListView.au3>
#include <WinAPITheme.au3>
#include <WindowsConstants.au3>
#include <Misc.au3>

#include "..\..\Includes\About.au3"
#include "..\..\Includes\Donate.au3"
#include "..\..\Includes\GuiMenuEx.au3"
#include "..\..\Includes\ImageListEx.au3"
#include "..\..\Includes\Link.au3"
#include "..\..\Includes\Logging.au3"
#include "..\..\Includes\Registry.au3"
#include "..\..\Includes\Splash.au3"
#include "..\..\Includes\StringEx.au3"
#include "..\..\Includes\Update.au3"
#include "..\..\Includes\Versioning.au3"

#include "UDF\Localization.au3"


;~ Developer Constants
Global Const $DEBUG_UPDATE		= False

;~ Constants
Global Const $CNT_MENUICONS		= 12
Global Const $CNT_LOGICONS		= 7

;~ General Settings
Global $g_sCompanyName			= "Rizonesoft"
Global $g_sProgShortName		= "DVDRepair"
Global $g_sProgShortName_X64	= $g_sProgShortName & "_X64"
Global $g_sProgName				= "DVD Drive Repair"
Global $g_iSingleton			= True

;~ Links

Global $g_sUrlCompHomePage		= "https://rizone.tech/2Eoo9O1|www.rizonesoft.com"							; https://www.rizonesoft.com
Global $g_sUrlContact			= "https://rizone.tech/2EhlYHF|www.rizonesoft.com/contact"					; https://www.rizonesoft.com/contact
Global $g_sUrlDownloads			= "https://rizone.tech/2EWMZRO|www.rizonesoft.com/downloads"				; https://www.rizonesoft.com/downloads/
Global $g_sUrlFacebook			= "https://rizone.tech/2nZTR92|Facebook.com/rizonesoft"						; https://www.facebook.com/rizonesoft
Global $g_sUrlTwitter			= "https://rizone.tech/2EZE7ej|Twitter.com/Rizonesoft"						; https://twitter.com/Rizonesoft
Global $g_sUrlGooglePlus		= "https://rizone.tech/2BqYKR1|Plus.google.com/+Rizonesoftsa" 				; https://plus.google.com/+Rizonesoftsa/posts
Global $g_sUrlRSS				= "https://rizone.tech/2nY4SIP|www.rizonesoft.com/feed"						; https://www.rizonesoft.com/feed
Global $g_sUrlPayPal			= "https://rizone.tech/2G8CL0g|PayPal.me/rizonesoft"						; https://www.paypal.me/rizonesoft
Global $g_sUrlGitHub			= "https://rizone.tech/2G5L6my|GitHub.com/rizonesoft/DVDRepair"				; https://github.com/rizonesoft/DVDRepair
Global $g_sUrlGitHubIssues		= "https://rizone.tech/2HhjvOq|GitHub.com/rizonesoft/DVDRepair/issues"		; https://github.com/rizonesoft/DVDRepair/issues
Global $g_sUrlSA				= "https://rizone.tech/2Brk7lf|Wikipedia.org/wiki/South_Africa"				; https://en.wikipedia.org/wiki/South_Africa
Global $g_sUrlProgPage			= "https://rizone.tech/2FoEq1C|www.rizonesoft.com/downloads/dvd-drive-repair/"
Global $g_sUrlProgUpdate		= "https://rizone.tech/2oSeDbT|www.rizonesoft.com/downloads/dvd-drive-repair/update/"
Global $g_sUrlWinRepair         = "https://rizone.tech/2BpEm2y|www.rizonesoft.com/downloads/complete-windows-repair/"

;~ Path Settings
Global $g_sWorkingDir		= @ScriptDir ;~ Working Directory
Global $g_sRootDir			= @ScriptDir ;~ Root Directory
Global $g_sPathIni			= $g_sWorkingDir & "\" & $g_sProgShortName & ".ini" ;~ Full Path to the Configuaration file
Global $g_sAppDataRoot		= @AppDataDir & "\" & $g_sCompanyName & "\" & $g_sProgShortName
Global $g_sThemesDir		= $g_sRootDir & "\Themes" ;~ Themes Directory
Global $g_sDocsDir			= $g_sRootDir & "\Documents\" & $g_sProgShortName ;~ Documentation Directory
Global $g_sDocHelpFile		= $g_sDocsDir & "\" & $g_sProgShortName & ".chm"
Global $g_sDocChanges		= $g_sDocsDir & "\Changes.txt"
Global $g_sDocLicense		= $g_sDocsDir & "\License.txt"
Global $g_sDocReadme		= $g_sDocsDir & "\Readme.txt"

; Configuration Settings
Global $g_iSetProtectMachine
Global $g_iSetResetMachine
Global $g_iSetResetAutorun
Global $g_iSetProtectAutorun
Global $g_iSetDisableExtras

;~ Language Settings
Global $g_sLanguageDir		= $g_sRootDir & "\Language\" & $g_sProgShortName
Global $g_sSelectedLanguage = IniRead($g_sPathIni, $g_sProgShortName, "Language", "en")
Global $g_tSelectedLanguage = $g_sSelectedLanguage
Global $g_sLanguageFile		= $g_sLanguageDir & "\" & $g_sSelectedLanguage & ".ini"

;~ Resources
Global $g_iUpdateIconStart				= 209
Global $g_iDialogIconStart				= 211
Global $g_iAboutIconStart				= 216
Global $g_iMenuIconsStart				= 260
Global $g_iLangIconStart				= 228
Global $g_aCoreIcons[3]
Global $g_iSizeIcon						= 64
Global $g_aLognIcons[$CNT_LOGICONS]
Global $g_aMenuIcons[$CNT_MENUICONS]
Global $g_sDlgOptionsIcon

;~ Logging Settings
Global $g_sLoggingRoot		= $g_sWorkingDir & "\Logging\" & $g_sProgShortName
Global $g_sLoggingPath		= $g_sLoggingRoot & "\" & $g_sProgShortName & ".log"
Global $g_GuiLogBoxHeight	= 150
Global $g_iLogIconStart		= -202
Global $g_iUpdateSubStatus	= True

;~ Splash Page Settings
Global $g_SplashAnimation
Global $g_iSplashDelay

;~ Update Notification Settings
Global $g_sUpdateAnimation	= $g_sThemesDir & "\Processing\" & $g_iSizeIcon & "\Globe.ani"
If $DEBUG_UPDATE = True Then
	Global $g_sRemoteUpdateFile	= "https://www.rizonesoft.com/update/" & $g_sProgShortName & ".ruz"
Else
	Global $g_sRemoteUpdateFile	= "https://www.rizonesoft.com/update/" & $g_sProgShortName & ".ru"
EndIf
Global $g_iCheckForUpdates	= 4

;~ Donate Time
Global $g_iUptimeMonitor	= 0
Global $g_iDonateTime		= 0
Global $g_iDonateTimeSet	= 259200 ; 10800 = 3 Hours | 86400 = Day | 259200 = 3 Days (Default) | 432000 = 5 Days

;~ Title Settings
Global $g_TitleShowAdmin	= True	;~ Show whether program is running as Administrator
Global $g_TitleShowArch		= True	;~ Show program architecture
Global $g_TitleShowVersion	= True	;~ Show program version
Global $g_TitleShowBuild	= True	;~ Show program build
Global $g_TitleShowAutoIt	= True	;~ Show AutoIt version

;~ Interface Settings
Global $g_iCoreGuiWidth		= 550
Global $g_iCoreGuiHeight	= 500
Global $g_iMsgBoxTimeOut	= 60

;~ About Dialog
Global $g_sAboutCredits		= "Derick Payne (Rizonesoft), Brian J Christy (Beege), " & _
							"G Sandler (MrCreatoR), Holger Kotsch, KaFu, LarsJ, nickston, ProgAndy, Yashied"
Global $g_sProgramTitle = _GUIGetTitle($g_sProgName)	;~ Get Program Ttile, including version.
Global $g_hCoreGui										;~ Main GUI
Global $g_hGuiIcon										;~ Main Icon
Global $g_AniUpdate
Global $g_hMenuFile
Global $g_hMenuTrouble
Global $g_hMenuTools
Global $g_hMenuHelp, $g_hUpdateMenuItem
Global $g_hMenuDebug
Global $g_OldSystemParam								;~ Used when resizing the main GUI
Global $g_hSubHeading
Global $g_hChkResetAutorun
Global $g_hChkDoNothing
Global $g_hChkProtectAutorun
Global $g_hChkProtectMachine
Global $g_hBtnRepair

If Not IsDeclared("g_iParentState") Then Global $g_iParentState
If Not IsDeclared("g_iParent") Then Global $g_iParent

Global $g_hOptionsGui
Global $g_hOChkLogEnabled
Global $g_hOInLogSize
Global $g_hOInLogSizeTemp
Global $g_hOLblLogSize
Global $g_hOBtnLogClear
Global $g_hOListLanguage
Global $g_hOImgLanguage
Global $g_hOIconLanguage
Global $g_hOLblLanguage
Global $g_hOLblPrefsUpdated
Global $g_hOBtnSave
Global $g_hOBtnCancel



_Localization_Messages()   		;~ Load Message Language Strings
If _Singleton($g_sProgramTitle, 1) = 0 And $g_iSingleton = True Then
	MsgBox($MB_SYSTEMMODAL + $MB_ICONINFORMATION, $g_aLangMessages[3], $g_aLangMessages[4], $g_iMsgBoxTimeOut)
	Exit
EndIf


If @OSVersion = "WIN_2000" Or @OSVersion = "WIN_XPe" Or @OSVersion = "WIN_2003" Then
	Local $iMsgBoxResult = MsgBox($MB_YESNO + $MB_ICONERROR + $MB_TOPMOST, $g_aLangMessages[3], StringFormat($g_aLangMessages[5], _
				_Link_Split($g_sUrlContact, 2)), $g_iMsgBoxTimeOut)
	Switch $iMsgBoxResult
		Case $IDYES
			ShellExecute(_Link_Split($g_sUrlContact))
			_TerminateProgram()
		Case -1, $IDNO
			_TerminateProgram()
	EndSwitch
Else

	If Not @AutoItX64 And @OSArch = "X64" Then

		Local $s64BitExePath = @ScriptDir & "\" & $g_sProgShortName_X64 & ".exe"

		If FileExists($s64BitExePath) Then
			ShellExecute($s64BitExePath)
			_TerminateProgram()
		Else

			Local $iMsgBoxResult = MsgBox($MB_YESNO + $MB_ICONWARNING + $MB_TOPMOST, $g_aLangMessages[3], StringFormat($g_aLangMessages[6], _
					_Link_Split($g_sUrlDownloads, 2)), $g_iMsgBoxTimeOut)

			Switch $iMsgBoxResult
				Case $IDYES
					ShellExecute(_Link_Split($g_sUrlDownloads))
					_TerminateProgram()
				Case -1, $IDNO
					_TerminateProgram()
			EndSwitch

		EndIf

	Else

		$g_SplashAnimation 	= $g_sThemesDir & "\Processing\32\Stroke.ani"
		$g_iSplashDelay		= 100
		_Splash_Start($g_aLangMessages[7])
		_Splash_Update($g_aLangMessages[8], 2)
		_Localization_Messages2()	;~ Load Custom Message Language Strings
		_Localization_Menus()		;~ Load Menu Language Strings
		_Localization_Custom()		;~ Load Custom Language Strings
		_Localization_About()		;~ Load About Language Strings
		_Splash_Update($g_aLangMessages[9], 4)
		_SetResources()
		_Splash_Update($g_aLangMessages[10], 6)
		_SetWorkingDirectories()
		_Splash_Update($g_aLangMessages[11], 8)
		_LoadConfiguration()
		_Splash_Update($g_aLangMessages[12], 10)
		_Logging_Initialize($g_sProgName)
		_Splash_Update($g_aLangMessages[13], 12)
		_SetHotKeys()
		_Splash_Update($g_aLangMessages[14], 14)
		_StartCoreGui()

	EndIf

EndIf


Func _SetHotKeys()

	HotKeySet("{ESC}", "_MinimizeProgram")

EndFunc


Func _StartCoreGui()

	Local $miFileOptions, $mnuFileLog, $miLogOpenFile, $miLogOpenRoot, $miFileReboot, $miFileClose
	Local $miTroubleHard, $miSysRestore, $miDeviceMan, $miFirmwareHQ
	Local $miHelpHome, $miHelpDownloads, $miHelpContact, $miHelpGitHub, $miHelpDonate, $miHelpAbout
	Local $hHeading

	$g_hCoreGui = GUICreate($g_sProgramTitle, $g_iCoreGuiWidth, $g_iCoreGuiHeight, -1, 25)
	If Not @Compiled Then GUISetIcon($g_aCoreIcons[0])
	GUISetFont(9, 400, -1, "Verdana", $g_hCoreGui, $CLEARTYPE_QUALITY)
	GUISetOnEvent($GUI_EVENT_CLOSE, "_ShutdownProgram", $g_hCoreGui)

	$g_hMenuFile = GUICtrlCreateMenu($g_aLangMenus[0])
	$g_hMenuTrouble = GUICtrlCreateMenu($g_aLangMenus[7])
	$g_hMenuTools = GUICtrlCreateMenu($g_aLangMenus[9])
	$g_hMenuHelp = GUICtrlCreateMenu($g_aLangMenus[13])

	_GuiCtrlMenuEx_SetMenuIconBkColor(0xF0F0F0)
	_GuiCtrlMenuEx_SetMenuIconBkGrdColor(0xFFFFFF)

	$miFileOptions = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[1], $g_hMenuFile, $g_aMenuIcons[0], $g_iMenuIconsStart)
	$mnuFileLog = _GuiCtrlMenuEx_CreateMenu($g_aLangMenus[2], $g_hMenuFile)
	$miLogOpenFile = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[3], $mnuFileLog, $g_aMenuIcons[1], $g_iMenuIconsStart + 1)
	$miLogOpenRoot = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[4], $mnuFileLog)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuFile)
	$miFileReboot = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[5], $g_hMenuFile)
	$miFileClose = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[6], $g_hMenuFile, $g_aMenuIcons[2], $g_iMenuIconsStart + 2)

	$miTroubleHard = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[8], $g_hMenuTrouble, $g_aMenuIcons[3], $g_iMenuIconsStart + 3)
	If _GetTroubleshootingInstalled("DeviceDiagnostic") Then
		;GUICtrlSetOnEvent($miTroubleHard, "_TroubleshootHardwareProblems")
	Else
		GUICtrlSetState($miTroubleHard, $GUI_DISABLE)
	EndIf

	$miSysRestore = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[10], $g_hMenuTools, $g_aMenuIcons[4], $g_iMenuIconsStart + 4)
	$miDeviceMan = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[11], $g_hMenuTools, $g_aMenuIcons[5], $g_iMenuIconsStart + 5)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuTools)
	$miFirmwareHQ = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[12], $g_hMenuTools, $g_aMenuIcons[6], $g_iMenuIconsStart + 6)

	$g_hUpdateMenuItem = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[14], $g_hMenuHelp, $g_aMenuIcons[7], $g_iMenuIconsStart + 7)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuHelp)
	$miHelpHome = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[15], $g_hMenuHelp, $g_aMenuIcons[8], $g_iMenuIconsStart + 8)
	$miHelpDownloads = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[16], $g_hMenuHelp)
	$miHelpContact = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[17], $g_hMenuHelp, $g_aMenuIcons[9], $g_iMenuIconsStart + 9)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuHelp)
	$miHelpGitHub = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[18], $g_hMenuHelp, $g_aMenuIcons[10], $g_iMenuIconsStart + 10)
	$miHelpDonate = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[19], $g_hMenuHelp)
	_GuiCtrlMenuEx_CreateMenuItem("", $g_hMenuHelp)
	$miHelpAbout = _GuiCtrlMenuEx_CreateMenuItem($g_aLangMenus[20], $g_hMenuHelp, $g_aMenuIcons[11], $g_iMenuIconsStart + 11)

	GUICtrlSetOnEvent($miFileOptions, "_ShowPreferencesDlg")
	GUICtrlSetOnEvent($miLogOpenFile, "_Logging_OpenFile")
	GUICtrlSetOnEvent($miLogOpenRoot, "_Logging_OpenDirectory")
	GUICtrlSetOnEvent($miFileReboot, "_Reboot")
	GUICtrlSetOnEvent($miFileClose, "_ShutdownProgram")

	GUICtrlSetOnEvent($miSysRestore, "_OpenWindowsSystemRestore")
	GUICtrlSetOnEvent($miDeviceMan, "_OpenDeviceManager")
	GUICtrlSetOnEvent($miFirmwareHQ, "_OpenFirmwareHQ")

	GUICtrlSetOnEvent($g_hUpdateMenuItem, "_CheckForUpdates")
	GUICtrlSetOnEvent($miHelpHome, "_About_HomePage")
	GUICtrlSetOnEvent($miHelpDownloads, "_About_Downloads")
	GUICtrlSetOnEvent($miHelpContact, "_About_Contact")
	GUICtrlSetOnEvent($miHelpGitHub, "_About_GitHubIssues")
	GUICtrlSetOnEvent($miHelpDonate, "_About_PayPal")
	GUICtrlSetOnEvent($miHelpAbout, "_About_ShowDialog")

	$g_hGuiIcon = GUICtrlCreateIcon($g_aCoreIcons[0], 99, 10, 10, $g_iSizeIcon, $g_iSizeIcon)
	GUICtrlSetTip($g_hGuiIcon, $g_aLangAbout[1] & Chr(32) & _GetProgramVersion(0) & @CRLF & _
			$g_aLangAbout[2] & Chr(32) & @AutoItVersion & @CRLF & _
			$g_aLangAbout[3] & " © " & @YEAR & " " & $g_sCompanyName, _
			$g_aLangAbout[0], $TIP_INFOICON, $TIP_BALLOON)
	GUICtrlSetCursor($g_hGuiIcon, 0)
	GUICtrlSetOnEvent($g_hGuiIcon, "_About_ShowDialog")
	$g_AniUpdate = GUICtrlCreateIcon($g_sUpdateAnimation, 0, 10, 10, $g_iSizeIcon, $g_iSizeIcon)
	GUICtrlSetState($g_AniUpdate, $GUI_HIDE)
	$hHeading = GUICtrlCreateLabel($g_sProgName & " " & _GetProgramVersion(1), $g_iSizeIcon + 22, 15, 300, 35)
	GUICtrlSetFont($hHeading, 12)

	$g_hSubHeading = GUICtrlCreateLabel(StringFormat($g_aLangCustom[0], $g_aLangCustom[11]), $g_iSizeIcon + 22, 38, 430, 70)
	GUICtrlSetFont($g_hSubHeading, 9)
	GUICtrlSetColor($g_hSubHeading, 0x353535)
	GUICtrlCreateLabel($g_aLangCustom[2], $g_iSizeIcon + 22, 120, 430, 40)
	GUICtrlSetFont(-1, 9)
	GUICtrlSetColor(-1, 0xFB650D)
	$g_hChkResetAutorun = GUICtrlCreateCheckbox($g_aLangCustom[3], 20, 180, 230, 15, $BS_AUTORADIOBUTTON)
	$g_hChkDoNothing = GUICtrlCreateCheckbox($g_aLangCustom[4], 280, 180, 200, 15)
	GUICtrlSetTip($g_hChkDoNothing, $g_aLangCustom[5], $g_aLangCustom[6], $TIP_INFOICON)
	$g_hChkProtectAutorun = GUICtrlCreateCheckbox($g_aLangCustom[7], 20, 205, 230, 15, $BS_AUTORADIOBUTTON)
	GUICtrlSetTip($g_hChkProtectAutorun, StringFormat($g_aLangCustom[8], $g_aLangCustom[3]), $g_aLangCustom[9], $TIP_WARNINGICON)
	$g_hChkProtectMachine = GUICtrlCreateCheckbox($g_aLangCustom[10], 280, 205, 200, 15)
	$g_hBtnRepair = GUICtrlCreateButton($g_aLangCustom[11], ($g_iCoreGuiWidth - 300) / 2, 250, 300, 50)
	GUICtrlSetFont($g_hBtnRepair, 11)
	GUICtrlSetState($g_hBtnRepair, $GUI_DEFBUTTON)

	$g_hListStatus = GUICtrlCreateListView("", 10, $g_iCoreGuiHeight - $g_GuiLogBoxHeight - 30, _
			$g_iCoreGuiWidth - 20, $g_GuiLogBoxHeight, BitOR($LVS_REPORT, $LVS_NOCOLUMNHEADER))
	_GUICtrlListView_SetExtendedListViewStyle($g_hListStatus, BitOR($LVS_EX_FULLROWSELECT, $LVS_EX_DOUBLEBUFFER, _
			$LVS_EX_SUBITEMIMAGES, $LVS_EX_INFOTIP, $WS_EX_CLIENTEDGE))
	_GUICtrlListView_AddColumn($g_hListStatus, "", 680)
	_WinAPI_SetWindowTheme(GUICtrlGetHandle($g_hListStatus), "Explorer")
	GUICtrlSetFont($g_hListStatus, 9, -1, -1, "Courier New")
	GUICtrlSetColor($g_hListStatus, 0x333333)

	$g_hImgStatus = _GUIImageList_Create(16, 16, 5, 1, 8, 8)
	For $iLx = 0 To $CNT_LOGICONS - 1
		_ImageListEx_AddBlankIcon($g_hImgStatus, $g_hListStatus, $g_aLognIcons[$iLx], $g_iLogIconStart - $iLx)
	Next
	_GUIImageList_Add($g_hImgStatus, _GUICtrlListView_CreateSolidBitMap($g_hListStatus, 0xFFFFFF, 16, 16))
	_GUICtrlListView_SetImageList($g_hListStatus, $g_hImgStatus, 1)

	GUICtrlSetOnEvent($g_hBtnRepair, "_RepairDVDDrives")
	GUICtrlSetOnEvent($g_hChkResetAutorun, "_SetOptions")
	GUICtrlSetOnEvent($g_hChkDoNothing, "_SetOptions")
	GUICtrlSetOnEvent($g_hChkProtectAutorun, "_SetOptions")
	GUICtrlSetOnEvent($g_hChkProtectMachine, "_SetOptions")

	GUICtrlSetState($g_hChkResetAutorun, $g_iSetResetAutorun)
	GUICtrlSetState($g_hChkDoNothing, $g_iSetDisableExtras)
	GUICtrlSetState($g_hChkProtectAutorun, $g_iSetProtectAutorun)
	GUICtrlSetState($g_hChkProtectMachine, $g_iSetProtectMachine)

	_SetOptions()

	_Splash_Update("", 100)
	GUISetState(@SW_SHOW, $g_hCoreGui)
	AdlibRegister("_OnIconsHover", 65)
	AdlibRegister("_UptimeMonitor", 1000)

	If $g_iCheckForUpdates == 4 Then
		_SoftwareUpdateCheck()
	EndIf

	While 1
		Sleep(30)
	WEnd

EndFunc   ;==>_StartCoreGui


Func _TestLoggingSystem($sMessage, $iSleep)
	_Logging_EditWrite($sMessage)
	Sleep($iSleep)
EndFunc   ;==>_TestLoggingSystem


#Region "Events"

Func _OnIconsHover()

	Local $iCursor = GUIGetCursorInfo()
	If Not @error Then

		If $iCursor[4] = $g_hGuiIcon And $g_aCoreIcons[2] == 1 Then
			$g_aCoreIcons[2] = 0
			GUICtrlSetImage($g_hGuiIcon, $g_aCoreIcons[1], 201)
		ElseIf $iCursor[4] <> $g_hGuiIcon And $g_aCoreIcons[2] == 0 Then
			$g_aCoreIcons[2] = 1
			GUICtrlSetImage($g_hGuiIcon, $g_aCoreIcons[0], 99)
		EndIf

	EndIf

EndFunc   ;==>_OnIconsHover

#EndRegion "Events"


#Region "Resources"

Func _SetResources()

	If @Compiled Then

		$g_aCoreIcons[0] = @ScriptFullPath
		$g_aCoreIcons[1] = @ScriptFullPath

		For $iLi = 0 To $CNT_LOGICONS - 1
			$g_aLognIcons[$iLi] = @ScriptFullPath
		Next

		For $iMi = 0 To $CNT_MENUICONS - 1
			$g_aMenuIcons[$iMi] = @ScriptFullPath
		Next

		$g_sDlgOptionsIcon = @ScriptFullPath

	Else

		$g_aCoreIcons[0] = $g_sThemesDir & "\Icons\" & $g_sProgShortName & ".ico"
		$g_aCoreIcons[1] = $g_sThemesDir & "\Icons\" & $g_sProgShortName & "H.ico"

		$g_aLognIcons[0] = $g_sThemesDir & "\Icons\logging\Information.ico"
		$g_aLognIcons[1] = $g_sThemesDir & "\Icons\logging\Complete.ico"
		$g_aLognIcons[2] = $g_sThemesDir & "\Icons\logging\Cross.ico"
		$g_aLognIcons[3] = $g_sThemesDir & "\Icons\logging\Exclamation.ico"
		$g_aLognIcons[4] = $g_sThemesDir & "\Icons\logging\Smiley-Glass.ico"
		$g_aLognIcons[5] = $g_sThemesDir & "\Icons\logging\Skull.ico"
		$g_aLognIcons[6] = $g_sThemesDir & "\Icons\logging\Snowman.ico"

		$g_aMenuIcons[0]  = $g_sThemesDir & "\Icons\Menus\Gear.ico"
		$g_aMenuIcons[1]  = $g_sThemesDir & "\Icons\Menus\Logbook.ico"
		$g_aMenuIcons[2]  = $g_sThemesDir & "\Icons\Menus\Close.ico"
		$g_aMenuIcons[3]  = $g_sThemesDir & "\Icons\Menus\DeviceTrouble.ico"
		$g_aMenuIcons[4]  = $g_sThemesDir & "\Icons\Menus\RestorePoint.ico"
		$g_aMenuIcons[5]  = $g_sThemesDir & "\Icons\Menus\DeviceMan.ico"
		$g_aMenuIcons[6]  = $g_sThemesDir & "\Icons\Menus\Firmware.ico"
		$g_aMenuIcons[7]  = $g_sThemesDir & "\Icons\Menus\Update.ico"
		$g_aMenuIcons[8]  = $g_sThemesDir & "\Icons\Menus\Home.ico"
		$g_aMenuIcons[9]  = $g_sThemesDir & "\Icons\Menus\Mail.ico"
		$g_aMenuIcons[10] = $g_sThemesDir & "\Icons\Menus\GitHub.ico"
		$g_aMenuIcons[11] = $g_sThemesDir & "\Icons\Menus\About.ico"

		$g_sDlgOptionsIcon = $g_sThemesDir & "\Icons\Dialogs\Gear.ico"

	EndIf

	$g_aCoreIcons[2] = 1

EndFunc   ;==>_SetResources

#EndRegion "Resources"


#Region "Working Directories"

Func _ResetWorkingDirectories()

	$g_sPathIni = $g_sWorkingDir & "\" & $g_sProgShortName & ".ini"
	$g_sLoggingRoot = $g_sWorkingDir & "\Logging\" & $g_sProgShortName
	$g_sLoggingPath = $g_sLoggingRoot & "\" & $g_sProgShortName & ".log"

EndFunc   ;==>_ResetWorkingDirectories


Func _SetAppDataDirectory()

	DirCreate($g_sAppDataRoot)

	$g_sWorkingDir = $g_sAppDataRoot

	_ResetWorkingDirectories()
	_GenerateIniFile($g_sPathIni, 0)

EndFunc   ;==>_SetAppDataDirectory


Func _SetWorkingDirectories()

	If IniRead($g_sPathIni, $g_sProgShortName, "PortableEdition", 1) = 0 Then
		_SetAppDataDirectory()
	Else
		If Not _GenerateIniFile($g_sPathIni) Then
			_SetAppDataDirectory()
		Else
			_ResetWorkingDirectories()
		EndIf
	EndIf

EndFunc   ;==>_SetWorkingDirectories


Func _GenerateIniFile($iniPath, $bPortable = 1)
	Local $iResult
    ; MsgBox(0, "", $iniPath)
	$iResult = IniWrite($iniPath, $g_sProgShortName, "PortableEdition", $bPortable)
	Return $iResult
EndFunc   ;==>_GenerateIniFile

#EndRegion "Working Directories"


#Region "Configuration (Settings)"

Func _LoadConfiguration()

	$g_iSetResetMachine = Int(IniRead($g_sPathIni, $g_sProgShortName, "ResetAutorunMachine", 1))
	$g_iSetProtectMachine = Int(IniRead($g_sPathIni, $g_sProgShortName, "ProtectAutorunMachine", 1))
	$g_iSetResetAutorun = Int(IniRead($g_sPathIni, $g_sProgShortName, "ResetAutorun", 1))
	$g_iSetProtectAutorun = Int(IniRead($g_sPathIni, $g_sProgShortName, "ProtectAutorun", 0))
	$g_iSetDisableExtras = Int(IniRead($g_sPathIni, $g_sProgShortName, "DisableExtras", 0))
	$g_iCheckForUpdates = Int(IniRead($g_sPathIni, $g_sProgShortName, "CheckForUpdates", 4))
	$g_iLoggingEnabled = Int(IniRead($g_sPathIni, $g_sProgShortName, "LoggingEnabled", 1))
	$g_iLoggingStorage = Int(IniRead($g_sPathIni, $g_sProgShortName, "LoggingStorageSize", 5242880))
	$g_iUptimeMonitor = Int(IniRead($g_sPathIni, "Donate", "Seconds", 0))
	$g_iDonateTime = Int(IniRead($g_sPathIni, "Donate", "DonateTime", 0))

EndFunc   ;==>_LoadConfiguration


Func _SaveConfiguration()

	IniWrite($g_sPathIni, $g_sProgShortName, "ResetAutorunMachine", $g_iSetResetMachine)
	IniWrite($g_sPathIni, $g_sProgShortName, "ProtectAutorunMachine", $g_iSetProtectMachine)
	IniWrite($g_sPathIni, $g_sProgShortName, "ResetAutorun", $g_iSetResetAutorun)
	IniWrite($g_sPathIni, $g_sProgShortName, "ProtectAutorun", $g_iSetProtectAutorun)
	IniWrite($g_sPathIni, $g_sProgShortName, "DisableExtras", $g_iSetDisableExtras)
	IniWrite($g_sPathIni, "Donate", "Seconds", $g_iUptimeMonitor)

EndFunc

#EndRegion "Configuration (Settings)"


Func _CheckForUpdates()

	_SetUpdateAnimationState($GUI_SHOW)
	_SoftwareUpdateCheck(True)
	_SetUpdateAnimationState($GUI_HIDE)

EndFunc   ;==>_CheckForUpdates


Func _UptimeMonitor()
	If $g_iUptimeMonitor < 2000000000 Then
		$g_iUptimeMonitor += 1
	EndIf
EndFunc


Func _SetUpdateAnimationState($iState)

	If $iState = 16 Then

		If FileExists($g_sUpdateAnimation) Then
			GUICtrlSetState($g_AniUpdate, $GUI_SHOW)
			GUICtrlSetState($g_hGuiIcon, $GUI_HIDE)
		EndIf
		_SetProcessingStates($GUI_DISABLE)
		GUICtrlSetData($g_hSubHeading, $g_aLangCustom[1])

	ElseIf $iState = 32 Then

		If FileExists($g_sUpdateAnimation) Then
			GUICtrlSetState($g_AniUpdate, $GUI_HIDE)
			GUICtrlSetState($g_hGuiIcon, $GUI_SHOW)
		EndIf
		_SetProcessingStates($GUI_ENABLE)
		GUICtrlSetData($g_hSubHeading, $g_aLangCustom[0])

	EndIf

EndFunc   ;==>_SetUpdateAnimationState


Func _SetProcessingStates($iState)

	GUICtrlSetState($g_hMenuFile, $iState)
	GUICtrlSetState($g_hMenuHelp, $iState)
	GUICtrlSetState($g_hMenuDebug, $iState)

EndFunc   ;==>_SetProcessingStates


Func _ShutdownProgram()

	AdlibUnRegister("_OnIconsHover")
	AdlibUnRegister("_UptimeMonitor")

	_SaveConfiguration()

	If $g_iUptimeMonitor > $g_iDonateTimeSet = True And _
			$g_iDonateTime == 0 Then
		IniWrite($g_sPathIni, "Donate", "DonateTime", $g_iUptimeMonitor)
		_Donate_ShowDialog()
	Else
		WinSetTrans($g_hCoreGui, Default, 255)
		_TerminateProgram()
	EndIf

EndFunc   ;==>_ShutdownProgram


Func _TerminateProgram()

	If $g_iSingleton Then
		Local $iPID = ProcessExists(@ScriptName)
		If $iPID Then ProcessClose($iPID)
	EndIf
	Exit

EndFunc


Func _MinimizeProgram()

	Local $iState = WinGetState($g_hCoreGui)

	If BitAND($iState, 4) Then
		WinSetState($g_hCoreGui, "", @SW_MINIMIZE)
	EndIf

EndFunc

#Region "Processing"


Func _RepairDVDDrives()

	Local $iBootMessage = 0

	GUICtrlSetState($g_hBtnRepair, $GUI_DISABLE)
	GUICtrlSetState($g_hChkResetAutorun, $GUI_DISABLE)
	GUICtrlSetState($g_hChkProtectAutorun, $GUI_DISABLE)
	GUICtrlSetState($g_hChkDoNothing, $GUI_DISABLE)

	_Logging_Start($g_aLangMessages2[11])
	_RunCommand("sc config ShellHWDetection start= auto obj= LocalSystem")
	_RunCommand("net start ShellHWDetection")

	_Logging_EditWrite($g_aLangMessages2[12])
	_Registry_Delete("HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E965-E325-11CE-BFC1-08002BE10318}", "UpperFilters")
	_Registry_Delete("HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E965-E325-11CE-BFC1-08002BE10318}", "LowerFilters")

	If $g_iSetDisableExtras = 0 Then

		If $g_iSetResetAutorun = 1 Then

			_Logging_EditWrite($g_aLangMessages2[13])
			_Registry_Write("HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\CDRom", "AutoRun", "REG_DWORD", 1)

			_Registry_Delete("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "DontSetAutoplayCheckbox")
			_Registry_Delete("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoAutorun")
			_Registry_Delete("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoDriveTypeAutoRun")
			_Registry_Delete("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "DontSetAutoplayCheckbox")
			_Registry_Delete("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoAutorun")
			_Registry_Delete("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoDriveTypeAutoRun")

			If @OSVersion = "WIN_XP" Then
				_Registry_Delete("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\IniFileMapping\Autorun.inf", "")
			EndIf

		ElseIf $g_iSetProtectAutorun = 1 Then

			_Registry_Write("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoAutorun", "REG_DWORD", 1)
			If @OSVersion = "WIN_XP" Then
				_Registry_Write("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\IniFileMapping\Autorun.inf", "", "REG_SZ", "@SYS:DoesNotExist")
			Else

				_Registry_Write("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "DontSetAutoplayCheckbox", "REG_DWORD", 1)
				_Registry_Write("HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoDriveTypeAutoRun", "REG_DWORD", 255)

				If $g_iSetProtectMachine = 1 Then
					_Registry_Write("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoAutorun", "REG_DWORD", 1)
					_Registry_Write("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "DontSetAutoplayCheckbox", "REG_DWORD", 1)
					_Registry_Write("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoDriveTypeAutoRun", "REG_DWORD", 255)
				EndIf

			EndIf

		EndIf

	EndIf

	_Logging_EditWrite($g_aLangMessages2[14])
	_Registry_Write("HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\atapi\Controller0", "EnumDevice1", "REG_DWORD", 1)

	GUICtrlSetState($g_hBtnRepair, $GUI_ENABLE)
	GUICtrlSetState($g_hChkResetAutorun, $GUI_ENABLE)
	GUICtrlSetState($g_hChkProtectAutorun, $GUI_ENABLE)
	GUICtrlSetState($g_hChkDoNothing, $GUI_ENABLE)

	_Logging_EditWrite("^ " & $g_aLangMessages2[2])
	_Logging_EditWrite(StringFormat($g_aLangMessages2[5], StringReplace($g_aLangMenus[0], "&", ""), StringReplace($g_aLangMenus[5], "&", "")))
	_SetOptions()
	_Logging_FinalMessage($g_aLangMessages2[15])

EndFunc   ;==>_RepairDVDDrives


Func _RunCommand($sCommand)

	Local $iCMD = Run(@ComSpec & " /c " & $sCommand, @SystemDir, @SW_HIDE, $STDERR_MERGED)
	Local $sOutput, $sSuccess = ""

	While 1
		$sOutput = StdoutRead($iCMD)
		If @error Then
			ExitLoop
		EndIf

		Local $aOutput = StringSplit($sOutput, @CRLF)
		For $x = 1 To $aOutput[0]
			If __HasOutput($aOutput[$x]) Then
				_Logging_EditWrite(StringStripWS(__FormatRunOutput($aOutput[$x]), $STR_STRIPLEADING + $STR_STRIPTRAILING))
					Sleep(50)
			EndIf
		Next


	WEnd

EndFunc   ;==>_RunCommand


Func __HasOutput($sOutput)

	$sOutput = StringStripWS($sOutput, $STR_STRIPLEADING + $STR_STRIPTRAILING + $STR_STRIPSPACES)

	Switch $sOutput
		Case "", ".", ".."
			Return False
		Case Else
			Return True
	EndSwitch

EndFunc   ;==>__HasOutput


Func __FormatRunOutput($sOutput)

	Local $sReturn = $sOutput
	Local $sBadStrings = "Resetting , failed.|Resetting , OK!|Sucessfully"
	Local $sGoodStrings = "Resetting, failed.|Resetting, OK!|Successfully"
	Local $aBadStrings = StringSplit($sBadStrings, "|")
	Local $aGoodStrings = StringSplit($sGoodStrings, "|")


	If $aBadStrings[0] = $aGoodStrings[0] Then
		For $x = 1 To $aBadStrings[0]
			$sReturn = StringReplace($sReturn, $aBadStrings[$x], $aGoodStrings[$x])
		Next
	EndIf

	Return $sReturn

EndFunc   ;==>__FormatRunOutput


Func _BootMessage()

	_Logging_EditWrite($g_aLangMessages2[0])

	If $g_ShowInterface Then

		If Not IsDeclared("iMsgResult") Then Local $iMsgResult
		$iMsgResult = MsgBox($MB_YESNO + $MB_ICONEXCLAMATION, $g_aLangMessages2[1], $g_aLangMessages2[2])
		Select
			Case $iMsgResult = $IDYES
				_Reboot()
			Case $iMsgResult = $IDNO
				_Logging_EditWrite($g_aLangMessages2[3])
				_Logging_EditWrite($g_aLangMessages2[4])
				_Logging_EditWrite(StringFormat($g_aLangMessages2[5], StringReplace($g_aLangMenus[0], "&", ""), _
					StringReplace($g_aLangMenus[5], "&", "")))

		EndSelect

	EndIf

EndFunc   ;==>_BootMessage


Func _Reboot()

	_Logging_Start($g_aLangMessages2[9])

	If Not IsDeclared("iMsgResult") Then Local $iMsgResult
	$iMsgResult = MsgBox($MB_OKCANCEL + $MB_ICONEXCLAMATION, $g_aLangMessages2[7], StringFormat($g_aLangMessages2[8], $g_iMsgBoxTimeOut), $g_iMsgBoxTimeOut)

	If $iMsgResult = $IDOK Then
		_Logging_EditWrite($g_aLangMessages2[9])
		_Logging_End()
		Shutdown(18)
	Else
		_Logging_EditWrite($g_aLangMessages2[10])
		_Logging_End()
	EndIf

EndFunc   ;==>_Reboot


#EndRegion "Processing"


#Region "Menus Events"

Func _TroubleshootHardwareProblems()
	Run("msdt.exe /id DeviceDiagnostic")
EndFunc


Func _OpenWindowsSystemRestore()
	Run("systempropertiesprotection")
EndFunc   ;==>_OpenWindowsSystemRestore


Func _OpenDeviceManager()
	ShellExecute("devmgmt.msc")
EndFunc   ;==>_OpenSystemProtection


Func _OpenFirmwareHQ()
	ShellExecute("https://goo.gl/9yuuje")
EndFunc   ;==>_OpenFirmwareHQ


Func _GetTroubleshootingInstalled($sID)
	If FileExists(@WindowsDir & "\diagnostics\index\" & $sID & ".xml") Then
		Return True
	Else
		Return False
	EndIf
EndFunc

#EndRegion "Menu Events"


Func _SetOptions()

	If GUICtrlRead($g_hChkDoNothing) = $GUI_CHECKED Then

		GUICtrlSetState($g_hChkResetAutorun, $GUI_DISABLE)
		GUICtrlSetState($g_hChkProtectAutorun, $GUI_DISABLE)
		GUICtrlSetState($g_hChkProtectMachine, $GUI_DISABLE)
		$g_iSetDisableExtras = 1
	Else

		GUICtrlSetState($g_hChkResetAutorun, $GUI_ENABLE)
		GUICtrlSetState($g_hChkProtectAutorun, $GUI_ENABLE)
		$g_iSetDisableExtras = 0

		If GUICtrlRead($g_hChkResetAutorun) = $GUI_CHECKED Then
			$g_iSetResetAutorun = 1
			$g_iSetProtectAutorun = 0
			GUICtrlSetState($g_hChkProtectMachine, $GUI_DISABLE)
		ElseIf GUICtrlRead($g_hChkProtectAutorun) = $GUI_CHECKED Then
			$g_iSetProtectAutorun = 1
			$g_iSetResetAutorun = 0
			GUICtrlSetState($g_hChkProtectMachine, $GUI_ENABLE)
		EndIf

		If GUICtrlRead($g_hChkProtectMachine) = $GUI_CHECKED Then
			$g_iSetProtectMachine = 1
		Else
			$g_iSetProtectMachine = 0
		EndIf

	EndIf

EndFunc   ;==>_SetOptions


Func _ShowPreferencesDlg()

	_Localization_Preferences()	;~ Load Preferences Language Strings
	Local $iLangCount = 1

	$g_iParentState = WinGetState($g_hCoreGui)
	If $g_iParentState > 0 Then
		$g_iParent = $g_hCoreGui
		WinSetTrans($g_hCoreGui, Default, 200)
		GUISetState(@SW_DISABLE, $g_hCoreGui)
	Else
		$g_iParent = 0
	EndIf

	$g_hOptionsGui = GUICreate($g_aLangPreferences[0], 450, 500, -1, -1, BitOR($WS_CAPTION, $WS_POPUPWINDOW), $WS_EX_TOPMOST, $g_iParent)
	GUISetFont(Default, Default, Default, "Verdana", $g_hOptionsGui, 5)
	If $g_iParentState > 0 Then GUISetIcon($g_sDlgOptionsIcon, $g_iDialogIconStart + 2, $g_hAboutGui)
	GUISetOnEvent($GUI_EVENT_CLOSE, "__CloseOptionsDlg", $g_hOptionsGui)
	GUIRegisterMsg($WM_NOTIFY, "__LanguageListEvents")

	GUICtrlCreateTab(10, 10, 430, 430)
;~ 	GUICtrlCreateTabItem(StringFormat(" %s ", $g_aLangPreferences[1]))
;~ 	GUICtrlCreateTabItem("") ; end tabitem definition

	GUICtrlCreateTabItem(StringFormat(" %s ", $g_aLangPreferences[2]))
	GUICtrlCreateGroup($g_aLangPreferences[4], 25, 50, 400, 100)
	GUICtrlSetFont(-1, 10, 700, 2)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group
	GUICtrlCreateGroup($g_aLangPreferences[5], 25, 160, 400, 160)
	GUICtrlSetFont(-1, 10, 700, 2)
	$g_hOChkLogEnabled = GUICtrlCreateCheckbox($g_aLangPreferences[10], 35, 200, 200, 20)
	GUICtrlSetState($g_hOChkLogEnabled, $g_iLoggingEnabled)
	GUICtrlCreateLabel($g_aLangPreferences[11], 35, 230, 180, 20)
	$g_hOInLogSize = GUICtrlCreateInput(Round($g_iLoggingStorage / 1024, 2), 215, 228, 100, 20)
	GUICtrlSetStyle($g_hOInLogSize, BitOr($ES_RIGHT, $ES_NUMBER))
	GUICtrlSetFont(-1, 9, 400, 0, "Verdana")
	GUICtrlCreateLabel("KB", 325, 230, 50, 20)
	$g_hOInLogSizeTemp = Int(GUICtrlRead($g_hOInLogSize))
	$g_hOLblLogSize = GUICtrlCreateLabel(StringFormat($g_aLangPreferences[12], __GetLoggingSize()), 35, 270, 200, 20)
	GUICtrlSetColor($g_hOLblLogSize, 0x555555)
	$g_hOBtnLogClear = GUICtrlCreateButton($g_aLangPreferences[13], 255, 265, 150, 30)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group

	GUICtrlSetOnEvent($g_hOChkLogEnabled, "__CheckPreferenceChange")
	GUICtrlSetOnEvent($g_hOBtnLogClear, "__RemoveLoggingFile")
		;GUICtrlSetState($g_ReBarChkLogEnabled, $g_ReBarLogEnabled)
	__CheckLoggingStateChanged()
	GUICtrlCreateTabItem("") ; end tabitem definition

	GUICtrlCreateTabItem(StringFormat(" %s ", $g_aLangPreferences[3]))
	GUICtrlCreateGroup($g_aLangPreferences[6], 25, 50, 400, 350)
	GUICtrlSetFont(-1, 10, 700, 2)

	Local $aSelLangInfo = __ISO639CodeToIndex($g_sSelectedLanguage)
	$g_hOIconLanguage = GUICtrlCreateIcon(@ScriptFullPath, $g_iLangIconStart + $aSelLangInfo[1], 40, 90, 32, 32)
	$g_hOLblLanguage = GUICtrlCreateLabel($aSelLangInfo[0], 80, 98, 300)
	GUICtrlSetFont($g_hOLblLanguage, 11)

	$g_hOListLanguage = GUICtrlCreateListView("", 40, 135, 365, 200)
	_GUICtrlListView_SetExtendedListViewStyle($g_hOListLanguage, BitOR($LVS_EX_BORDERSELECT, _
			$LVS_EX_FLATSB, $LVS_EX_FULLROWSELECT, $LVS_EX_GRIDLINES, $LVS_EX_SUBITEMIMAGES, $LVS_EX_DOUBLEBUFFER, _
			$WS_EX_CLIENTEDGE, $LVS_EX_FLATSB, $LVS_EX_INFOTIP))

	$g_hOImgLanguage = _GUIImageList_Create(16, 16, 5, 3)
	For $l = 0 To 31
		_GUIImageList_AddIcon($g_hOImgLanguage, @ScriptFullPath, 0 - $g_iLangIconStart - $l)
	Next
	_GUICtrlListView_SetImageList($g_hOListLanguage, $g_hOImgLanguage, 1)

	_GUICtrlListView_AddColumn($g_hOListLanguage, Chr(32) & "Language", 280)
	_GUICtrlListView_AddColumn($g_hOListLanguage, Chr(32) & "Code", 150)
	_WinAPI_SetWindowTheme(GUICtrlGetHandle($g_hOListLanguage), "Explorer")
	_GUICtrlListView_AddItem($g_hOListLanguage, Chr(32) & "English", 0)
	_GUICtrlListView_AddSubItem($g_hOListLanguage, 0, "en", 1)
	_GUICtrlListView_SetItemParam($g_hOListLanguage, 0, 3300)

	Local $hLangSearch = FileFindFirstFile($g_sLanguageDir & "\*.ini")
	While 1
		Local $sLangFileName = FileFindNextFile($hLangSearch)
		;~ If there is no more file matching the search.
		If @error Then ExitLoop
		If $sLangFileName = "en.ini" Then ContinueLoop

		Local $sLangIniPath = $g_sLanguageDir & "\" & $sLangFileName
		ConsoleWrite($sLangIniPath)

		Local $sLangName = IniRead($sLangIniPath, "Language", "Name", "")
		Local $sLangCode = IniRead($sLangIniPath, "Language", "Code", "")
		Local $sLangEncoding = IniRead($sLangIniPath, "Language", "Encoding", "")
		Local $aIndex = __ISO639CodeToIndex($sLangCode)
		Local $iLangIcon = $aIndex[1]

		_GUICtrlListView_AddItem($g_hOListLanguage, Chr(32) & $sLangName, $iLangIcon)
		_GUICtrlListView_AddSubItem($g_hOListLanguage, $iLangCount, $sLangCode, 1)
		_GUICtrlListView_SetItemParam($g_hOListLanguage, $iLangCount, 3300 + $iLangCount)
		$iLangCount += 1

	WEnd

	Local $iSelLangItem = __FindLanguageItem(3300 + $aSelLangInfo[1])
	_GUICtrlListView_SetItemSelected($g_hOListLanguage, $iSelLangItem, True, True)
	_GUICtrlListView_EnsureVisible($g_hOListLanguage, $iSelLangItem)
	GUICtrlCreateLabel(StringFormat($g_aLangPreferences[14], $g_aLangPreferences[15]), 40, 350, 365, 35)
	GUICtrlSetColor(-1, 0x555555)
	GUICtrlSetFont(-1, 9)
	GUICtrlCreateGroup("", -99, -99, 1, 1) ;close group
	GUICtrlCreateTabItem("") ; end tabitem definition

	$g_hOLblPrefsUpdated = GUICtrlCreateLabel($g_aLangPreferences[17], 25, 455, 200, 20)
	GUICtrlSetColor($g_hOLblPrefsUpdated, 0x008000)
	GUICtrlSetState($g_hOLblPrefsUpdated, $GUI_HIDE)
	$g_hOBtnSave = GUICtrlCreateButton($g_aLangPreferences[15], 210, 450, 100, 30)
	GUICtrlSetFont($g_hOBtnSave, 10)
	GUICtrlSetState($g_hOBtnSave, $GUI_FOCUS)
	GUICtrlSetState($g_hOBtnSave, $GUI_DISABLE)
	GUICtrlSetOnEvent($g_hOBtnSave, "__SavePreferences")

	$g_hOBtnCancel = GUICtrlCreateButton($g_aLangPreferences[16], 320, 450, 100, 30)
	GUICtrlSetFont($g_hOBtnCancel, 10)
	GUICtrlSetOnEvent($g_hOBtnCancel, "__CloseOptionsDlg")

	GUISetState(@SW_SHOW, $g_hOptionsGui)
	AdlibRegister("__CheckLoggingSizeChange", 500)

EndFunc


Func __RemoveLoggingFile()

	GUICtrlSetState($g_hOBtnLogClear, $GUI_DISABLE)
	DirRemove($g_sLoggingRoot, 1)

	If $g_iLoggingEnabled = 1 Then
		_Logging_Initialize()
	EndIf

	GUICtrlSetData($g_hOLblLogSize, StringFormat($g_aLangPreferences[12], __GetLoggingSize()))
	GUICtrlSetData($g_hOLblPrefsUpdated, $g_aLangPreferences[19])
	GUICtrlSetState($g_hOLblPrefsUpdated, $GUI_SHOW)
	GUICtrlSetState($g_hOBtnLogClear, $GUI_ENABLE)

EndFunc


Func __GetLoggingSize()

	If FileExists($g_sLoggingRoot) Then
		Return Round(DirGetSize($g_sLoggingRoot) / 1024, 2)
	Else
		Return 0
	EndIf

EndFunc


Func __CheckPreferenceChange()

	If __CheckBoxChanged("LoggingEnabled", $g_hOChkLogEnabled) = True Then
		GUICtrlSetState($g_hOBtnSave, $GUI_ENABLE)
	Else
		GUICtrlSetState($g_hOBtnSave, $GUI_DISABLE)
	EndIf

	__CheckLoggingStateChanged()
	GUICtrlSetState($g_hOLblPrefsUpdated, $GUI_HIDE)

EndFunc


Func __CheckLoggingStateChanged()

	If GUICtrlRead($g_hOChkLogEnabled) = $GUI_CHECKED Then
		GUICtrlSetState($g_hOInLogSize, $GUI_ENABLE)
		GUICtrlSetState($g_hOBtnLogClear, $GUI_ENABLE)
	Else
		GUICtrlSetState($g_hOInLogSize, $GUI_DISABLE)
		GUICtrlSetState($g_hOBtnLogClear, $GUI_DISABLE)
	EndIf

EndFunc


Func __CheckLoggingSizeChange()

	Local $iLogTemp = Int(GUICtrlRead($g_hOInLogSize))

	If $g_hOInLogSizeTemp <> $iLogTemp Then
		GUICtrlSetState($g_hOBtnSave, $GUI_ENABLE)
		$g_hOInLogSizeTemp = $iLogTemp
	EndIf

EndFunc


Func __CheckBoxChanged($sPreference, $hCheckBox)

	Local $iTmp = IniRead($g_sPathIni, $g_sProgShortName, $sPreference, -1)
	If $iTmp > -1 Then
		If GUICtrlRead($hCheckBox) = $iTmp Or GUICtrlRead($hCheckBox) = ($iTmp + 4) Then
			Return False
		Else
			Return True
		EndIf
	Else
		Return True
	EndIf

EndFunc


Func __SavePreferences()

	Local $iLangChanged = False

	If $g_tSelectedLanguage <> $g_sSelectedLanguage Then
		Local $iMsgBoxResult = MsgBox($MB_OKCANCEL + $MB_ICONINFORMATION, $g_aLangPreferences[20], $g_aLangPreferences[21], 0, $g_hOptionsGui)
		Switch $iMsgBoxResult
			Case 1
				IniWrite($g_sPathIni, $g_sProgShortName, "Language", $g_tSelectedLanguage)
				GUICtrlSetData($g_hOLblPrefsUpdated, $g_aLangPreferences[20])
				GUICtrlSetState($g_hOLblPrefsUpdated, $GUI_SHOW)
				GUICtrlSetState($g_hOBtnSave, $GUI_DISABLE)
				$iLangChanged = True
			Case 2
				GUICtrlSetState($g_hOBtnSave, $GUI_ENABLE)
				Return 0
		EndSwitch
	EndIf

	If GUICtrlRead($g_hOChkLogEnabled) = $GUI_CHECKED Then
		$g_iLoggingEnabled = 1
	ElseIf GUICtrlRead($g_hOChkLogEnabled) = $GUI_UNCHECKED Then
		$g_iLoggingEnabled = 0
	EndIf
	$g_iLoggingStorage = Int(GUICtrlRead($g_hOInLogSize)) * 1024

	IniWrite($g_sPathIni, $g_sProgShortName, "LoggingEnabled", $g_iLoggingEnabled)
	IniWrite($g_sPathIni, $g_sProgShortName, "LoggingStorageSize", $g_iLoggingStorage)

	If $iLangChanged = True Then
		$iMsgBoxResult = MsgBox($MB_OKCANCEL + $MB_ICONINFORMATION, $g_aLangPreferences[22], $g_aLangPreferences[23], 0, $g_hOptionsGui)
		Switch $iMsgBoxResult
			Case 1
				_ShutdownProgram()
			Case 2
				$iLangChanged = False
		EndSwitch
	Else
		GUICtrlSetData($g_hOLblPrefsUpdated, $g_aLangPreferences[19])
		GUICtrlSetState($g_hOLblPrefsUpdated, $GUI_SHOW)
		GUICtrlSetState($g_hOBtnSave, $GUI_DISABLE)
	EndIf

EndFunc


Func __CancelPreferences()
EndFunc


Func __FindLanguageItem($pItem)

	Local $tInfo, $iSelLangItem
	$tInfo = DllStructCreate($tagLVFINDINFO)
    DllStructSetData($tInfo, "Flags", $LVFI_PARAM)
    DllStructSetData($tInfo, "Param", $pItem)
    $iSelLangItem = _GUICtrlListView_FindItem($g_hOListLanguage, -1, $tInfo)
	Return $iSelLangItem

EndFunc


Func __CloseOptionsDlg()

	If $g_iParentState > 0 Then
		WinSetTrans($g_hCoreGui, Default, 255)
		GUISetState(@SW_ENABLE, $g_hCoreGui)
	EndIf
	AdlibUnRegister("__CheckLoggingSizeChange")
	GUIDelete($g_hOptionsGui)

EndFunc


Func __ISO639CodeToIndex($i639 = "en")

	Local $aLangInfo[3]

	Switch $i639
		Case "en"
			$aLangInfo[0] = "English"
			$aLangInfo[1] = 0
		Case "af"
			$aLangInfo[0] = "Afrikaans"
			$aLangInfo[1] = 1
		Case "ar"
			$aLangInfo[0] = "Arabic"
			$aLangInfo[1] = 2
		Case "bg"
			$aLangInfo[0] = "Bulgarian"
			$aLangInfo[1] = 3
		Case "cs"
			$aLangInfo[0] = "Czech"
			$aLangInfo[1] = 4
		Case "da"
			$aLangInfo[0] = "Danish"
			$aLangInfo[1] = 5
		Case "de"
			$aLangInfo[0] = "German"
			$aLangInfo[1] = 6
		Case "el"
			$aLangInfo[0] = "Greek"
			$aLangInfo[1] = 7
		Case "es"
			$aLangInfo[0] = "Spanish"
			$aLangInfo[1] = 8
		Case "fr"
			$aLangInfo[0] = "French"
			$aLangInfo[1] = 9
		Case "hi"
			$aLangInfo[0] = "Hindi"
			$aLangInfo[1] = 10
		Case "hr"
			$aLangInfo[0] = "Croatian"
			$aLangInfo[1] = 11
		Case "hu"
			$aLangInfo[0] = "Hungarian"
			$aLangInfo[1] = 12
		Case "id"
			$aLangInfo[0] = "Indonesian"
			$aLangInfo[1] = 13
		Case "is"
			$aLangInfo[0] = "Icelandic"
			$aLangInfo[1] = 14
		Case "it"
			$aLangInfo[0] = "Italian"
			$aLangInfo[1] = 15
		Case "iw"
			$aLangInfo[0] = "Hebrew"
			$aLangInfo[1] = 16
		Case "ja"
			$aLangInfo[0] = "Japanese"
			$aLangInfo[1] = 17
		Case "ko"
			$aLangInfo[0] = "Korean"
			$aLangInfo[1] = 18
		Case "nl"
			$aLangInfo[0] = "Dutch"
			$aLangInfo[1] = 19
		Case "no"
			$aLangInfo[0] = "Norwegian"
			$aLangInfo[1] = 20
		Case "pl"
			$aLangInfo[0] = "Polish"
			$aLangInfo[1] = 21
		Case "pt"
			$aLangInfo[0] = "Portuguese"
			$aLangInfo[1] = 22
		Case "ro"
			$aLangInfo[0] = "Romanian"
			$aLangInfo[1] = 23
		Case "ru"
			$aLangInfo[0] = "Russian"
			$aLangInfo[1] = 24
		Case "si"
			$aLangInfo[0] = "Slovenian"
			$aLangInfo[1] = 25
		Case "sk"
			$aLangInfo[0] = "Slovak"
			$aLangInfo[1] = 26
		Case "sv"
			$aLangInfo[0] = "Swedish"
			$aLangInfo[1] = 27
		Case "th"
			$aLangInfo[0] = "Thai"
			$aLangInfo[1] = 28
		Case "tr"
			$aLangInfo[0] = "Turkish"
			$aLangInfo[1] = 29
		Case "vi"
			$aLangInfo[0] = "Vietnamese"
			$aLangInfo[1] = 30
		Case "zh-CN"
			$aLangInfo[0] = "Chinese"
			$aLangInfo[1] = 31
	EndSwitch

	Return $aLangInfo

EndFunc


Func __LanguageListEvents($hWnd, $iMsg, $wParam, $lParam)
	#forceref $hWnd, $iMsg, $wParam
	Local $hWndFrom, $iIDFrom, $iCode, $tNMHDR, $hWndListView, $tInfo, $iLi
	; Local $tBuffer
	$hWndListView = $g_hOListLanguage
	If Not IsHWnd($g_hOListLanguage) Then $hWndListView = GUICtrlGetHandle($g_hOListLanguage)

	$tNMHDR = DllStructCreate($tagNMHDR, $lParam)
	$hWndFrom = HWnd(DllStructGetData($tNMHDR, "hWndFrom"))
	$iIDFrom = DllStructGetData($tNMHDR, "IDFrom")
	$iCode = DllStructGetData($tNMHDR, "Code")
	Switch $hWndFrom
		Case $hWndListView
			Switch $iCode
				Case $NM_CLICK ; Sent by a list-view control when the user clicks an item with the left mouse button
					$tInfo = DllStructCreate($tagNMITEMACTIVATE, $lParam)
					Local $iSelLang = DllStructGetData($tInfo, "Index")
					$g_tSelectedLanguage = _GUICtrlListView_GetItemText($g_hOListLanguage, $iSelLang, 1)
					Local $aSelLangInfo = __ISO639CodeToIndex($g_tSelectedLanguage)
					GUICtrlSetImage($g_hOIconLanguage, @ScriptFullPath, $g_iLangIconStart + $aSelLangInfo[1])
					GUICtrlSetData($g_hOLblLanguage, $aSelLangInfo[0])

					If $g_tSelectedLanguage <> $g_sSelectedLanguage Then
						GUICtrlSetState($g_hOBtnSave, $GUI_ENABLE)
					Else
						GUICtrlSetState($g_hOBtnSave, $GUI_DISABLE)
					EndIf

;~ 					$g_SelectedSolution = DllStructGetData($tInfo, "Index")
;~ 					If _DetectSolutionIndexChange($g_SelSolutionTemp) Then
;~ 						$g_SelSolutionTemp = $g_SelectedSolution
;~ 						If $g_SelectedSolution = -1 Then
;~ 							_SetAllOptionStates($GUI_DISABLE)
;~ 							_SetAllOptionsChecked($GUI_UNCHECKED)
;~ 						Else
;~ 							_SetModules($g_SelectedSolution)
;~ 						EndIf
;~ 					EndIf

				Case $NM_DBLCLK ; Sent by a list-view control when the user double-clicks an item with the left mouse button
					$tInfo = DllStructCreate($tagNMITEMACTIVATE, $lParam)
;~ 					;~ $g_SelectedSolution = DllStructGetData($tInfo, "Index")

				Case $NM_RCLICK ; Sent by a list-view control when the user clicks an item with the right mouse button
					$tInfo = DllStructCreate($tagNMITEMACTIVATE, $lParam)
;~ 					;~ $g_SelectedSolution = DllStructGetData($tInfo, "Index")

			EndSwitch
	EndSwitch
	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_NOTIFY