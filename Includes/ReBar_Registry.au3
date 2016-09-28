#include-once


; #INDEX# =======================================================================================================================
; Title .........: Registry
; AutoIt Version : 3.3.15.0
; Description ...: Registry Functions
; Author(s) .....: Derick Payne (Rizonesoft)
; ===============================================================================================================================


#include "ReBar_Logging.au3"


#Region Global Variables and Constants

; #VARIABLES# ===================================================================================================================
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
; ===============================================================================================================================
#EndRegion Global Variables and Constants


#Region Functions list
; #CURRENT# =====================================================================================================================
; _RegistryDelete
; _RegistryWrite
; ==============================================================================================================================
#EndRegion Functions list


Func _RegistryDelete($hKey, $hValue = "REG_NONE")

	If $hValue = "REG_NONE" Then
		RegDelete($hKey)
	Else
		RegDelete($hKey, $hValue)
	EndIf

	Local $nError = @error
	If $nError Then
		If $hValue = "REG_NONE" Then
			_EditLoggingWrite("Error: Could not remove branch [" & $hKey & "]")
		Else
			_EditLoggingWrite("Error: Could not remove " & Chr(34) & $hValue & Chr(34) & " in branch [" & $hKey & "]")
		EndIf
		__ReturnRegistryError($nError)
	EndIf

EndFunc


Func _RegistryWrite($hKey, $hValueName = "REG_NONE", $hRegType = "REG_SZ", $hValue = "")

	If $hValueName = "REG_NONE" Then
		RegWrite($hKey)
	Else
		RegWrite($hKey, $hValueName, $hRegType, $hValue)
	EndIf

	Local $nError = @error
	If $nError Then
		If $hValueName = "REG_NONE" Then
			_EditLoggingWrite("Error: Could not write to [" & $hKey & "]")
		Else
			_EditLoggingWrite("Error: Could not write to [" & $hKey & " --> " & $hValueName & " --> " & $hRegType & " --> " & $hValue & "]")
		EndIf
		__ReturnRegistryError($nError)
	Else
		Return True
	EndIf

	Return False

EndFunc


Func __ReturnRegistryError($nError)
	Switch $nError
		Case 1
			_EditLoggingWrite("Unable to open requested key!")
		Case 2
			_EditLoggingWrite("Unable to open requested main key!")
		Case 3
			_EditLoggingWrite("Unable to remote connect to the registry!")
		Case -1
			_EditLoggingWrite("Unable to delete requested value!")
		Case -2
			_EditLoggingWrite("Unable to delete requested key/value!")
	EndSwitch
EndFunc