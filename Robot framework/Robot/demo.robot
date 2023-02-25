
*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://demo.nopcommerce.com/
${browser}    chrome

*** Test Cases ***
 Login_Test
    Open browser    ${url}    ${browser}
    Maximize Browser Window
    Get Time
    Login-To-Application

*** Keywords ***

Login-To-Application
     Get Title
    Click Link    xpath://a[contains(text(),'Log in')]
    Sleep    3
    Input Text    xpath://input[@id='Email']    mailatsourabh@gmail.com
    Input Text    xpath: //input[@id='Password']    sourabh@1
    Sleep    3
    Click Element   xpath://button[contains(text(),'Log in')]
    Sleep    3
    

    

