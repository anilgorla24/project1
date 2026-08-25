*** Settings ***
Library     SeleniumLibrary
Resource    loginkeyword.robot

*** Variables ***
${url}   https://automationexercise.com/login
${Browser}    Chrome
${username}    anil123@gmail.com
${password}    Anil@242424

*** Test Cases ***
login test
    open my browser     ${url}    ${Browser}
    enter username     ${username}
    enter password     ${password}
    click login button
    Sleep    3s
    verify login successful
    close my browser