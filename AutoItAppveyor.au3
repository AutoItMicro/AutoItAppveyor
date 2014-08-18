Func appveyorAddTest($name, $outcome, $duration = 1, $filename = @ScriptName)
    Run('appveyor AddTest "' & $name & '" -Outcome ' & $outcome & ' -Duration ' & $duration & ' -FileName "' & $filename & '" -Framework "Micro"')
EndFunc

Func appveyorAddMessage($messageTitle, $category = "Information", $messageDetails = "")
    Run('appveyor AddMessage "' & $messageTitle & '" -Category ' & $category & ' -Details "' & $messageDetails & '"')
EndFunc