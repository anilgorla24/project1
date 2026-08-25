*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
close All Browsers
    Open Browser    https://www.w3schools.com/howto/howto_js_tabs.asp    Chrome
    Maximize Browser Window

    Open Browser   https://www.amazon.com/    Chrome
    Maximize Browser Window
    Sleep    2s

    Close Browser

   

