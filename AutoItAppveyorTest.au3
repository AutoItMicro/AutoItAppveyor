#Region Includes
#include-once
#include <AutoItAppveyor.au3>
#EndRegion

appveyorAddTest("Test Passed","Passed")
appveyorAddTest("Test Failed","Failed")
appveyorAddTest("Test Long","Passed",1000000)
appveyorAddTest("Test Skipped","Skipped")
appveyorAddTest("Test Ignored","Ignored")
appveyorAddTest("Test Inconclusive","Inconclusive")
appveyorAddTest("Test Cancelled","Cancelled")
appveyorAddMessage("Information Message Test")
appveyorAddMessage("Information Message Test with Tag", "Information")
appveyorAddMessage("Warning Message", "Warning")
appveyorAddMessage("Error Message", "Error")
appveyorAddMessage("Information Message with details", "Information", "Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. ")
appveyorAddMessage("Warning Message with details", "Warning", "Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. ")
appveyorAddMessage("Error Message with details", "Error", "Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. Lots of details, lorem Ipsum. ")

