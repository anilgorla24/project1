*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
test case
    Open Browser    https://testautomationpractice.blogspot.com/    Chrome
    Maximize Browser Window
    Sleep    2    

    Input Text    id=name    prawin
    Input Text    id=email    peawn@gmail.com
    Sleep    2