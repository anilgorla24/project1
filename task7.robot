*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
switch window
    Open Browser    https://demo.automationtesting.in/Windows.html    Chrome
    Maximize Browser Window
    
    Click Element    xpath://*[@id="Tabbed"]/a/button
    Switch Window     title=Selenium
    
    Click Link    xpath://*[@id="main_navbar"]/ul/li[4]/a

    Close Browser