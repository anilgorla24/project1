*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.flipkart.com/
${BROWSER}    chrome
${SEARCH_TERM}    mobile
${SEARCH_BUTTON}    //button[@type='submit']



*** Test Cases ***
test case 1
    Open Browser    ${URL}    ${BROWSER}


    Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath://button[text()='✕']    5s
    Run Keyword And Ignore Error    Click Element    xpath://button[text()='✕']


    Wait Until Element Is Visible    xpath://input[@name='q']    5s
    Input Text    xpath://input[@name='q']    ${SEARCH_TERM}

    Click Element    ${SEARCH_BUTTON}

    Close Browser
  