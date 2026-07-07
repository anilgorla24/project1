*** Settings ***
Suite Setup     Log To Console    opening browser
Suite Teardown    Log To Console    closing browser

Test Setup     Log To Console    login to application
Test Teardown    Log To Console    logout from application

*** Test Cases ***
test case 1
    Log To Console    executing test case 1
test case 2
    Log To Console    executing test case 2
test case 3
    Log To Console    executing test case 3
test case 4
    Log To Console    executing test case 4    