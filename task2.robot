*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.demoblaze.com
${BROWSER}    Chrome

*** Test Cases ***
Task2 - Open Product And Verify
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Wait Until Element Is Visible    xpath=//*[@id="tbodyid"]/div[1]/div/div/h4/a    10s
    Click Element    xpath=//*[@id="tbodyid"]/div[1]/div/div/h4/a

    Wait Until Element Is Visible    xpath://*[@id="tbodyid"]/h2   10s     

    ${product_name}=    Get Text    xpath://*[@id="tbodyid"]/h2
    Log To Console    ${product_name}

    Should Be Equal    ${product_name}    Samsung galaxy s6

    Capture Page Screenshot    samsung.png

    Close Browser
