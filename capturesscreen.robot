*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
capture Screen
    Open Browser  https://www.amazon.com/    Chrome
    Maximize Browser Window
    sleep  2s
    Capture Element Screenshot  xpath://a[@href="/ref=nav_logo"]  logo.png

    Capture Page Screenshot   page.png

    Sleep  2s
    Close Browser