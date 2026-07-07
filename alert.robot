*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
alert test
    Open Browser  https://testautomationpractice.blogspot.com/  chrome
    Maximize Browser Window
    Sleep  5s
    Wait Until Element Is Visible    xpath://*[@id="alertBtn"]
    Click Element   xpath://*[@id="alertBtn"]
    Sleep  5s
    Handle Alert  accept
    Sleep  5s
    Close Browser