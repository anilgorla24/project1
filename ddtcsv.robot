*** Settings ***
Library     SeleniumLibrary
Resource    resource11.robot
Library     DataDriver     logindata.csv     

Suite Setup     open my browser
Suite Teardown     close browser
Test Template     invalid login

*** Test Cases ***
login test     ${username}    ${password}


*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input password    ${password}
    click login button
    error message should be displayed