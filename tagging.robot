*** Settings ***

*** Test Cases ***
login test
    [Tags]    sanity    login
    Log To Console    this is the login test

payment test
    [Tags]    regression    payment
    Log To Console    this is the payment test

logout test
    [Tags]    sanity    logout
    Log To Console    this is the logout test    