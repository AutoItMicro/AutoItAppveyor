; #FUNCTION# ====================================================================================================================
; Name ..........: appveyorAddTest
; Description ...: a function which will add a test case to the Appveyor CI web interface for a build.
; Syntax ........: appveyorAddTest($name, $outcome[, $duration = 1[, $filename = @ScriptName]])
; Parameters ....: $name                - The name of the test you would like to add.
;                  $outcome             - [Passed, Failed, Skipped, Ignored, Inconclusive, Cancelled]
;                  $duration            - [optional] time in milliseconds to complete the test, default is 1 ms
;                  $filename            - [optional] the name of the file which originates the test, default is @scriptname
; Return values .: None
; Author ........: @KyleChamberlin
; Modified ......: 2014-18-08
; Remarks .......: Alpha, API likely to change
; ===============================================================================================================================
Func appveyorAddTest($name, $outcome, $duration = 1, $filename = @ScriptName)
    Run('appveyor AddTest "' & $name & '" -Outcome ' & $outcome & ' -Duration ' & $duration & ' -FileName "' & $filename & '" -Framework "Micro"')
EndFunc

; #FUNCTION# ====================================================================================================================
; Name ..........: appveyorAddMessage
; Description ...: a function which will add a message to the Appveyor CI web interface for a build.
; Syntax ........: appveyorAddMessage($messageTitle[, $category = "Information"[, $messageDetails = ""]])
; Parameters ....: $messageTitle        - the main text of the message to be sent.
;                  $category            - [optional] [Information, Warning, Error]. Default is "Information".
;                  $messageDetails      - [optional] Additional text for the message.
; Return values .: None
; Author ........: @KyleChamberlin
; Modified ......: 2014-18-08
; Remarks .......: Alpha, API likely to change
; ===============================================================================================================================
Func appveyorAddMessage($messageTitle, $category = "Information", $messageDetails = "")
    Run('appveyor AddMessage "' & $messageTitle & '" -Category ' & $category & ' -Details "' & $messageDetails & '"')
EndFunc