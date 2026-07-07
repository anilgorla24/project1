*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
navigation Keyword
    Open Browser    https://www.w3schools.com/howto/howto_js_tabs.asp    Chrome
    Maximize Browser Window
    ${loc}=  Get Location
    Log  ${loc}
    Sleep  2s

    Go To    https://www.amazon.com/
    ${loc}=  Get Location
    Log  ${loc}
    Sleep  2s

    Go Back
    ${loc}=  Get Location
    Log  ${loc}
    Sleep  2s

    Close Browser