
*** Settings ***
#Library    SeleniumLibrary
Library     RPA.Browser.Selenium      auto_close=${True}
Library    RPA.Windows

*** Variables ***
${url}    https://rahulshettyacademy.com/dropdownsPractise/
${browser}    chrome
  
*** Test Cases ***
 Login_Test
    Open browser    ${url}    ${browser}
    Maximize Browser Window
    Login-To-Application
*** Keywords ***

Login-To-Application
    Sleep     3
    ${title}    Get title
    Log To Console    ${title}
    click Element     xpath://input[@id='ctl00_mainContent_rbtnl_Trip_1']
    Sleep    3
    Click Element    xpath://input[@id='ctl00_mainContent_chk_friendsandfamily']
    Sleep    3
    #Click Element    xpath://select[@id='ctl00_mainContent_DropDownListCurrency']
    Select From List By Label    ctl00_mainContent_DropDownListCurrency    USD
    Sleep    3
   # Click Element    xpath://div[@id='divpaxinfo']
  #  Sleep    3
  #  Click Element    xpath.//span[@id='hrefIncAdt']
   # Sleep    3
   # Click Element    xpath.//input[@id='btnclosepaxoption']
   # Sleep    3
  #  Click Element    xpath.//span[@id='hrefIncChd']
   #  Sleep    3

    