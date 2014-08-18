Run('appveyor AddMessage "test message"')
Run('appveyor AddTest "Test Passed" -Outcome Passed -Duration 10 -Framework "Micro" -FileName "AutoItAppveyor.au3"')
Run('appveyor AddTest "Test Failed" -Outcome Failed -Duration 10 -Framework "Micro" -FileName "AutoItAppveyor.au3"')
Run('appveyor AddTest "Test long" -Outcome Passed -Duration 10000 -Framework "Micro" -FileName "AutoItAppveyor.au3"')