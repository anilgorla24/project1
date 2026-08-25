*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
task-1
    Open Browser    https://the-internet.herokuapp.com/login    Chrome
    Maximize Browser Window

    Input Text    name=username    tomsmith
    Input Password    id=password    SuperSecretPassword
    Click Element    xpath://*[@id="login"]/button/i

    Wait Until Element Is Visible    xpath=//*[@id="content"]/div/h4    10s
    Wait Until Page Contains    Login Page    10s

    Capture Page Screenshot    anil.png
    Close Browser
  