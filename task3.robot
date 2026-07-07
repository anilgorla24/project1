*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
task3
    Open Browser    https://the-internet.herokuapp.com/dropdown    Chrome
    Maximize Browser Window
    Sleep  2
    Click Element    xpath://*[@id="dropdown"]
    
    Wait Until Element Is Visible    xpath=//*[@id="dropdown"]    10s
    Select From List By Label    xpath=//*[@id="dropdown"]    Option 1

    Wait Until Element Is Visible    xpath://*[@id="dropdown"]    10s
    Select From List By Label    xpath://*[@id="dropdown"]    Option 2