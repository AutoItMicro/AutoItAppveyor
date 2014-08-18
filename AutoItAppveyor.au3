Run('appveyor AddMessage "test message"')
Run('appveyor AddTest "Test Passed" -Outcome Passed -Duration 10')
Run('appveyor AddTest "Test Failed" -Outcome Failed -Duration 10')