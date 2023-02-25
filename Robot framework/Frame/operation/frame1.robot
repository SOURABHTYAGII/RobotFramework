*** Settings ***
Library    SeleniumLibrary
Library    RPA.Desktop
#Library     RPA.Browser.Selenium      auto_close=${False}

*** Keywords ***
Frames_
    Set Selenium Speed    2
    Select Frame        packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame
    Select Frame    packageFrame
     Click Link    Alert
     Unselect Frame
     Select Frame    classFrame
     Click Link    Tree
     Close Browser