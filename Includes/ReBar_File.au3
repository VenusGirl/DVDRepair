#include-once

#include <WinAPILocale.au3>


; #INDEX# =======================================================================================================================
; Title .........: ReBar File
; AutoIt Version : 3.3.15.0
; Description ...: Functions that assist with files and directories.
; Author(s) .....: Derick Payne (Rizonesoft)
; ===============================================================================================================================

#Region Global Variables and Constants

; #VARIABLES# ===================================================================================================================
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
; ===============================================================================================================================
#EndRegion Global Variables and Constants


#Region Functions list
; #CURRENT# =====================================================================================================================
; _FileGetExtension
; ==============================================================================================================================
#EndRegion Functions list


; #FUNCTION# ====================================================================================================================
; Author(s) .....: Yashied
; Modified ......: Derick Payne (Rizonesoft)
; ===============================================================================================================================
Func _FileGetExtension($sFile, $fExists = 0)

	If $fExists Then
		If (Not FileExists($sFile)) Or (StringInStr(FileGetAttrib($sFile), "D")) Then
			Return ""
		EndIf
	EndIf

	Local $Data = StringSplit($sFile, "\")

	If IsArray($Data) Then
		If StringInStr($Data[$Data[0]], ".") Then
			Return StringRegExpReplace($Data[$Data[0]], "^.*\.", "")
		EndIf
	EndIf
	Return ''
EndFunc   ;==>_FileGetExtension
