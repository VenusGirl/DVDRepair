#include-once


; #INDEX# =======================================================================================================================
; Title .........: Versioning
; AutoIt Version : 3.3.15.0
; Description ...: Versioning Functions
; Author(s) .....: Derick Payne (Rizonesoft)
; ===============================================================================================================================


;===============================================================================================================
; Tidy Settings
;===============================================================================================================
#AutoIt3Wrapper_Run_Tidy=Y										 ;~ (Y/N) Run Tidy before compilation. Default=N
#AutoIt3Wrapper_Tidy_Stop_OnError=Y								 ;~ (Y/N) Continue when only Warnings. Default=Y


#include "ReBar_Functions.au3"
#include "ReBar_Declarations.au3"
#include "ReBar_AutoIt3Script.au3"


#Region Global Variables and Constants

; #VARIABLES# ===================================================================================================================
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
; ===============================================================================================================================
#EndRegion Global Variables and Constants


#Region Functions list
; #CURRENT# =====================================================================================================================
; _GetProgramVersion
; _GUIGetTitle
; ===============================================================================================================================
#EndRegion Functions list


; #FUNCTION# ====================================================================================================================
; Author(s) .....: Derick Payne (Rizonesoft)
; Modified ......:
; ===============================================================================================================================
Func _GetProgramVersion($iFlag = 1)

	Local $sReturn = ""

	If @Compiled Then

		Local $sFullVersion = FileGetVersion(@ScriptFullPath)

		If $iFlag == 0 Then
			$sReturn = $sFullVersion
		EndIf

		Local $sPltReturn = StringSplit($sFullVersion, ".")
		If $iFlag <= $sPltReturn[0] Then
			$sReturn = $sPltReturn[$iFlag]
		Else
			Return SetError(1, 2, 0)
		EndIf

	Else
		$sReturn = _AutoIt3Script_GetVersion(@ScriptFullPath, $iFlag)
	EndIf

	Return $sReturn

EndFunc   ;==>_GetProgramVersion


Func _GUIGetTitle($sGUIName)

	Local $sReturn = ""
	Local $sAdminInstance = ""
	Local $sProgamVersion = ""
	Local $sProgramBuild = ""
	Local $sAutoItArch = ""
	Local $sAutoItVers = ""

	If IsAdmin() And $g_ReBarTitleShowAdmin == 1 Then $sAdminInstance = "Administrator ~ "
	If $g_ReBarTitleShowArch == 1 Then $sAutoItArch = " : " & _AutoItGetArchitecture() & "-Bit"

	If @Compiled Then

		Local $sReturn = FileGetVersion(@ScriptFullPath)

		Local $sPltReturn = StringSplit($sReturn, ".")
		If IsArray($sPltReturn) Then

			If $g_ReBarTitleShowVersion == 1 Then $sProgamVersion = Chr(32) & $sPltReturn[1]
			If $g_ReBarTitleShowBuild == 1 Then $sProgramBuild = " : Build " & $sPltReturn[$sPltReturn[0]]
			$sReturn = $sAdminInstance & $sGUIName & $sProgamVersion & $sProgramBuild & $sAutoItArch

		EndIf

	Else

		If $g_ReBarTitleShowVersion == 1 Then $sProgamVersion = Chr(32) & _AutoIt3Script_GetVersion(@ScriptFullPath, 1)
		If $g_ReBarTitleShowBuild == 1 Then $sProgramBuild = " : Build " & _AutoIt3Script_GetVersion(@ScriptFullPath, 4)
		If $g_ReBarTitleShowAutoIt == 1 Then $sAutoItVers = " : using AutoIt version " & @AutoItVersion
		$sReturn =  $sAdminInstance & $sGUIName & $sProgamVersion & $sProgramBuild & $sAutoItVers & $sAutoItArch

	EndIf

	Return $sReturn

EndFunc   ;==>_GUIGetTitle


Func _SoftwareUpdateCheck()

	If Not IsDeclared("g_ReBarUpdateLocal") Then Local $g_ReBarUpdateLocal

	; _StartLogging("Checking for updates...")
	Local $hDownload = InetGet($g_ReBarUpdateRemote, $g_ReBarUpdateLocal, $INET_FORCERELOAD, $INET_DOWNLOADBACKGROUND)
	; _EditLoggingWrite("Getting: " & $g_ReBarUpdateRemote)

	Do
        Sleep(250)
    Until InetGetInfo($hDownload, $INET_DOWNLOADCOMPLETE)

	; Retrieve the number of total bytes received and the filesize.
	Local $iBytesSize = InetGetInfo($hDownload, $INET_DOWNLOADREAD)
	Local $iUpdateFileSize = FileGetSize($g_ReBarUpdateLocal)


	; Close the handle returned by InetGet.
	InetClose($hDownload)

	If $iBytesSize = $iUpdateFileSize Then

		; _EditLoggingWrite("Update file downloaded successfully. " & $iBytesSize & " bytes recieved.")
		; _EditLoggingWrite("^ Update file: [" & $g_ReBarUpdateLocal & "]")

		Local $sLocalBuild = _GetProgramVersion(4)
		Local $sRemoteBuild = IniRead($g_ReBarUpdateLocal, "Update", "LatestBuild", $sLocalBuild)
		$g_ReBarUpdateURL = IniRead($g_ReBarUpdateLocal, "Update", "UpdateURL", $g_ReBarAboutHome)

		GUICtrlSetState($g_ReBarUpdateLabel, $GUI_SHOW)
			GUICtrlSetCursor($g_ReBarUpdateLabel, 0)
		GUICtrlSetOnEvent($g_ReBarUpdateLabel, "_OpenUpdateURL")

		If $sLocalBuild  < Number($sRemoteBuild) Then
			GUICtrlSetData($g_ReBarUpdateLabel, $g_ReBarProgName & " update available. Click here to update.")
			GUICtrlSetColor($g_ReBarUpdateLabel, 0xE81123)
		Else
			GUICtrlSetData($g_ReBarUpdateLabel, "You are using the latest " & $g_ReBarProgName & " version.")
			GUICtrlSetColor($g_ReBarUpdateLabel, 0x186FC3)
		EndIf

	Else
		GUICtrlSetState($g_ReBarUpdateLabel, $GUI_HIDE)
		; _EditLoggingWrite("Error: could not download update file.")
	EndIf

	Return False

EndFunc


Func _OpenUpdateURL()
	ShellExecute($g_ReBarUpdateURL)
EndFunc