
*** Settings ***
Library    SeleniumLibrary
Library    RPA.SAP
#Library     RPA.Browser.Selenium      auto_close=${False}
Resource    ../operation/frame1.robot

*** Variables ***
${url}        https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${browser}    chrome
  
*** Test Cases ***
 Handling_frames
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Frames_


    

