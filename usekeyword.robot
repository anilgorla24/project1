*** Settings ***
Library    SeleniumLibrary
Resource    result.robot

*** Variables ***
${URL}     https://practicetestautomation.com/practice-test-login/
${BROWSER}    chrome

*** Test Cases ***
keyword
    ${pagetitle}=    user    ${URL}    ${BROWSER}
    Log To Console  ${pagetitle}
    Input Text    xpath://*[@id="username"]   anil
    Input Password   xpath://*[@id="password"]  anil123
    Sleep    2s
    Close Browser


   

  