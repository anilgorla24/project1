*** Settings ***

Library    SeleniumLibrary


*** Test Cases ***
speed test
    Open Browser   https://automationexercise.com   chrome
    Maximize Browser Window
    Sleep  5s
    Click Element   //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    Input Text   name   anil
    Input Text   email  anil@234
    Click Element  //*[@id="form"]/div/div/div[3]/div/form/button
    Select Radio Button   title   mr
    Sleep  5s

    Close Browser
    
    
