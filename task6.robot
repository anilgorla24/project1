*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://the-internet.herokuapp.com/windows
${BROWSER}    Chrome

*** Test Cases ***
Handle Multiple Windows
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    3

    Click Link    Click Here
    Switch Window    title=New Window
    Element Text Should Be    xpath://h3    New Window

    Switch Window    title=The Internet
    Element Text Should Be    xpath://h3    Opening a new window

  


