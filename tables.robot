*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
tables
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

    ${rows}=    Get Element Count    xpath://table[@name="BookTable"]/tbody/tr
    ${cols}=    Get Element Count    xpath://table[@name="BookTable"]/tbody/tr[1]/th

    Log To Console  Total Rows: ${rows}
    Log To Console  Total Columns: ${cols}

    ${text}=    Get Text    xpath://table[@name="BookTable"]/tbody/tr[3]/td[3]
    Log To Console  ${text}

    Table Column Should Contain   xpath://table[@name="BookTable"]   3   Subject
    Table Row Should Contain      xpath://table[@name="BookTable"]   3   Learn Java

    Table Cell Should Contain     xpath://table[@name="BookTable"]   6   3   JAVA
    Table Header Should Contain   xpath://table[@name="BookTable"]   Price

    Close Browser