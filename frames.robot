*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
frame test
    Open Browser    https://www.javadoc.io/doc/org.seleniumhq.selenium/selenium-api/3.141.59/index.html    chrome
    Maximize Browser Window
    Sleep  5s

    Select Frame    xpath://[@name='packageListFrame']
    Click Link    org.openqa.selenium
    Unselect Frame
    Sleep  5s

    Select Frame    xpath://[@name='packageFrame']
    Click Link     WebDriver
    Unselect Frame
    Sleep  5s

    Select Frame    xpath://[@name='classFrame']
    Click Link     Help
    Unselect Frame
    Sleep  5s
    Close Browser