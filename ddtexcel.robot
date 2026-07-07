*** Settings ***
Library     SeleniumLibrary
Resource    resource11.robot
Library     DataDriver     testdata.xlsx     sheet_name=Sheet1    encoding=utf-8

Suite Setup     open my browser
Suite Teardown     close browser
Test Template     invalid login

*** Test Cases ***
login test  
    [Template]     invalid login


*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input password    ${password}
    click login button
    error message should be displayed