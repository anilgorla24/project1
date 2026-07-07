*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
user
    [Arguments]   ${APPURL}    ${APPBROWSER}
    Open Browser    ${APPURL}    ${APPBROWSER}
    Maximize Browser Window
    Sleep    2s
    ${title}=   Get Title
    RETURN  ${title}