*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
login 
    Open Browser    https://demo.automationtesting.in/Index.html    Chrome
    Click Button    id=btn1
    Input Text    xpath:/html/body/div/div/div[2]/input    gorla@gmail.com
    Input Password    xpath:/html/body/div/div/div[3]/input    gorla@123
    Click Element    id=enterbtn