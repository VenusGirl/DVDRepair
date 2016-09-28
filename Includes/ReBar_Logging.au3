#include-once

#include <ListviewConstants.au3>
#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>
#include <FileConstants.au3>
#include <GuiImageList.au3>
#include <GuiListView.au3>
#include <GuiListBox.au3>
#include <GuiEdit.au3>
#include <Date.au3>

#include <WinAPITheme.au3>

#include "ReBar_Declarations.au3"
#include "ReBar_Functions.au3"


; #INDEX# =======================================================================================================================
; Title .........: Logging
; AutoIt Version : 3.3.12.0
; Language ......: English
; Description ...: Rizonesoft Logging System.
; Author(s) .....: Derick Payne
; Dll(s) ........:
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _LoggingInitialize
; ===============================================================================================================================

If Not IsDeclared("g_ListStatus") Then Global $g_ListStatus = ""
If Not IsDeclared("g_ImgStatus") Then Global $g_ImgStatus = ""

; #FUNCTION# ====================================================================================================================
; Author ........: Derick Payne
; Modified.......:
; ===============================================================================================================================
Func _LoggingInitialize()

	If $g_ReBarLogEnabled Then

		_GUICtrlListView_SetExtendedListViewStyle($g_ListStatus, BitOR($LVS_EX_FULLROWSELECT, $LVS_EX_DOUBLEBUFFER, _
			$LVS_EX_SUBITEMIMAGES, $LVS_EX_INFOTIP, _
			$WS_EX_CLIENTEDGE))
		_GUICtrlListView_AddColumn($g_ListStatus, "", 800)
		_WinAPI_SetWindowTheme(GUICtrlGetHandle($g_ListStatus), "Explorer")

		$g_ImgStatus = _GUIImageList_Create(16, 16, 5, 1, 8, 8)
		_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -103)
		_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -130)
		_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -122)
		_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -134)
		_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -133)
		_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -135)
		_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -136)
		_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -138)
		_GUIImageList_AddIcon($g_ImgStatus, $g_ReBarResFugue, -999)
		_GUICtrlListView_SetImageList($g_ListStatus, $g_ImgStatus, 1)

		; When run from a CD, we cannot perform logging.
		If DriveGetType(StringLeft(@ScriptFullPath, 3)) = "CDROM" Then
			$g_ReBarLogFileWrite = 0
		Else

			If BitAND(__LoggingDirCreate(), __LoggingFileReset()) Then

				; Log file and directory seems valid. Enable logging.
				$g_ReBarLogFileWrite = 1

				_LoggingWrite("", False)
				_LoggingWrite("", False)
				_LoggingWrite("                                            ./", False)
				_LoggingWrite("                                          (o o)", False)
				_LoggingWrite("--------------------------------------oOOo-(-)-oOOo--------------------------------------", False)
				_LoggingWrite("", False)
				_LoggingGetSystemInfo()

			Else
				; Log file could not be created. Disable logging.
				$g_ReBarLogFileWrite = 0
			EndIf

		EndIf

	EndIf

EndFunc


Func _StartLogging($sMessage)

	If $g_ReBarLogEnabled Then
		_ClearLogging()
		_EditLoggingWrite($sMessage)
		_LoggingWrite("------------------------------------------------------------------------------------------", False)
	EndIf

EndFunc


Func _EndLogging()

	If $g_ReBarLogEnabled Then
		_EditLoggingWrite("Finished!")
		_LoggingWrite("------------------------------------------------------------------------------------------", False)
	EndIf

EndFunc


Func _ClearLogging()

	If $g_ReBarLogEnabled Then

		_GUICtrlListView_BeginUpdate($g_ListStatus)
		_GUICtrlListView_DeleteAllItems($g_ListStatus)
		_GUICtrlListView_EndUpdate($g_ListStatus)

	EndIf

EndFunc


Func _EditLoggingWrite($sMessage = "", $bTimePrex = True, $UseListBox = True)

	If $g_ReBarLogEnabled Then

		Local $sTimeStamp = ""

		If Not IsDeclared("EDIT_INFO") Then Local $EDIT_INFO

		GUICtrlSetState($g_ListStatus, $GUI_SHOW)
		GUICtrlSetState($EDIT_INFO, $GUI_HIDE)

		If $bTimePrex Then
			$sTimeStamp = "[" & @HOUR & ":" & @MIN & ":" & @SEC & ":" & @MSEC & "] "
		EndIf

		If $UseListBox Then

			Local $iImage = 0

			If StringInStr($sMessage, "error") Then
				$iImage = 2
			ElseIf StringInStr($sMessage, "Response Received") Or _
				StringInStr($sMessage, "success") Then
				$iImage = 1
			ElseIf StringLeft($sMessage, 9) = "Finished!" Then
				Switch @MON
					Case 10
						$iImage = 4
					Case 12
						$iImage = 5
					Case Else
						$iImage = 3
				EndSwitch
			ElseIf StringLeft($sMessage, 1) = "^" Then
				$iImage = 6
			ElseIf StringStripWS($sMessage, 8) = "" Then
				$iImage = 8
			EndIf
			_GUICtrlListView_AddItem($g_ListStatus, Chr(32) & $sMessage, $iImage)
			_GUICtrlListView_SetItemFocused($g_ListStatus, _GUICtrlListView_GetItemCount($g_ListStatus) - 1)
			_GUICtrlListView_EnsureVisible($g_ListStatus, _GUICtrlListView_GetItemCount($g_ListStatus) - 1)

		Else

			_GUICtrlListView_AddItem($g_ListStatus, Chr(32) & $sMessage, $iImage)
			_GUICtrlListView_SetItemFocused($g_ListStatus, _GUICtrlListView_GetItemCount($g_ListStatus) - 1)
			_GUICtrlListView_EnsureVisible($g_ListStatus, _GUICtrlListView_GetItemCount($g_ListStatus) - 1)

		EndIf

		_LoggingWrite($sMessage, $bTimePrex)

	EndIf

EndFunc


Func _LoggingWrite($sData = "", $bTimePrex = True)

	If $g_ReBarLogEnabled Then

		If __LoggingFileReset() And $g_ReBarLogFileWrite Then

			Local $hLogOpen = FileOpen($g_ReBarLogPath, $FO_APPEND)
			If $hLogOpen = -1 Then
				; Log file could not be opened. Disable logging.
				$g_ReBarLogFileWrite = 0
				Return 0
			EndIf

			Local $sTimePrex= ""
			If $bTimePrex Then $sTimePrex = __GenerateTimePrefix(0) & Chr(32)

			FileWriteLine($hLogOpen, $sTimePrex & $sData & @CRLF)
			FileClose($hLogOpen)

		EndIf

		$g_ReBarLogFileWrite = 1
		Return 1

	EndIf

EndFunc


Func _LoggingGetSystemInfo()

	Local $aRAMStats = MemGetStats()

	_LoggingWrite(StringFormat(	"DATE:              %s", __GenerateTimePrefix(0, False)))
	_LoggingWrite(StringFormat(	"PROGRAM:           %s", $g_ReBarProgName & Chr(32) & FileGetVersion(@ScriptFullPath)))
	_LoggingWrite(StringFormat( "PROGRAM PATH:      %s", "[" & @ScriptFullPath & "]"))
	_LoggingWrite(StringFormat( "COMPILED:          %s", __StringFromBoolean(@Compiled)))
	If Not @Compiled Then
		_LoggingWrite(StringFormat( "AUTOIT VERSION:    %s", @AutoItVersion))
		_LoggingWrite(StringFormat( "AUTOIT 64-BIT:     %s", __StringFromBoolean(@AutoItX64)))
	EndIf
	_LoggingWrite(StringFormat(	"WINDOWS VERSION:   %s", _GetWindowsVersion() & " " & @OSServicePack))
	_LoggingWrite(StringFormat(	"SYSTEM TYPE:       %s", StringReplace(@OSArch, "X", "") & "-Bit Operating System"))
	_LoggingWrite(StringFormat(	"MEMORY (RAM):      %s", Round(($aRAMStats[1] /1024), 2) & " MB"))
	_LoggingWrite(StringFormat(	"PROGRAM FILES:     %s", @ProgramFilesDir))
	_LoggingWrite(StringFormat(	"WINDOWS DIRECTORY: %s", @WindowsDir))
	_LoggingWrite("-----------------------------------------------------------------------------------------", False)
	_LoggingWrite("", False)

EndFunc


Func __StringFromBoolean($bBoolean)

	If $bBoolean = 1 Then
		Return "YES"
	ElseIf $bBoolean = 0 Then
		Return "NO"
	EndIf

EndFunc


Func __GenerateTimePrefix($iFlag = 0, $bFormat = 1)

	Local $sReturn = ""

	Switch $iFlag
		Case 0
			$sReturn = _NowDate() & " " & _NowTime(5)
		Case 1
			$sReturn = _NowDate()
		Case 2
			$sReturn = _NowTime(5)
		Case 3
			$sReturn = _NowTime(5) & ":" & @MSEC
	EndSwitch

	If $bFormat Then
		Return StringFormat("[ %s ]", $sReturn)
	Else
		Return $sReturn
	EndIf

EndFunc


; #FUNCTION# ====================================================================================================================
; Name...........: __LoggingFileCreate
; Return values .: Success: 1
;                  Failure: 0
; Author ........: Derick Payne
; ===============================================================================================================================
Func __LoggingFileCreate()

		If FileExists($g_ReBarLogPath) Then
			Return 1
		Else
			If FileWrite($g_ReBarLogPath,	"=========================================================================================" & @CRLF & _
											" " & StringUpper($g_ReBarProgName) & " VERSION " & $g_ReBarLogVersion & @CRLF & _
											"=========================================================================================" & @CRLF & _
											"") Then
				Return 1
			EndIf
		EndIf

		Return 0

EndFunc


; #FUNCTION# ====================================================================================================================
; Name...........: __LoggingFileReset
; Return values .: Success: 1
;                  Failure: 0
; Author ........: Derick Payne
; ===============================================================================================================================
Func __LoggingFileReset()

	If FileExists($g_ReBarLogPath) Then
		If FileGetSize($g_ReBarLogPath) >= $g_ReBarLogStorage Then
			If FileDelete($g_ReBarLogPath) Then Return 1
		Else
			If FileSetAttrib($g_ReBarLogPath, "-RSH") Then Return 1
		EndIf
	Else
		If __LoggingFileCreate() Then Return 1
	EndIf

	Return 0

EndFunc


; #FUNCTION# ====================================================================================================================
; Name...........: __LoggingDirCreate
; Return values .: Success: 1
;                  Failure: 0
; Author ........: Derick Payne
; ===============================================================================================================================
Func __LoggingDirCreate()

	If FileExists($g_ReBarWorkingDir) Then

		Local $dirLogging = $g_ReBarLogBase

		If  FileExists($dirLogging) Then
			Return 1
		Else
			If DirCreate($dirLogging) Then Return 1
		EndIf

		Return 0

	Else

		Return 0

	EndIf

EndFunc