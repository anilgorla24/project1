*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Task Of Alerts
    Open Browser    https://the-internet.herokuapp.com/javascript_alerts    Chrome
    Maximize Browser Window

    Click Button    xpath=//*[@id="content"]/div/ul/li[1]/button
    Sleep    3
    Handle Alert    ACCEPT

    Click Button    xpath=//*[@id="content"]/div/ul/li[2]/button
    Sleep    3
    Handle Alert    ACCEPT

    Click Button    xpath=//*[@id="content"]/div/ul/li[3]/button
    Sleep    3
    Input Text Into Alert    welcome
        