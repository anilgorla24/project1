*** Settings ***
Library    SeleniumLibrary
Variables    locators.py

*** Keywords ***
open my browser
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window

enter username
    [Arguments]    ${username}
    Input Text    ${txt_username}    ${username}

enter password
    [Arguments]    ${password}
    Input Text    ${txt_password}    ${password}

click login button
    Click Button    ${btn_login}            

verify login successful
    Title Should Be    Automation Exercise - Signup / Login
close my browser
    Close All Browsers