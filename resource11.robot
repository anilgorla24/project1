*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://automationexercise.com/login 
${Browser}    Chrome 

*** Keywords ***
open my browser
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

close browser
    Close All Browsers    

openlogin page
    Go To    ${URL}

input username
    [Arguments]    ${username}
    Wait Until Element Is Visible   xpath://*[@id="form"]/div/div/div[1]/div/form/input[2]    
    Input Text   xpath://*[@id="form"]/div/div/div[1]/div/form/input[2]    ${username}    

input password
    [Arguments]    ${password}
    Wait Until Element Is Visible   xpath://*[@id="form"]/div/div/div[1]/div/form/input[3]    
    Input Text    xpath://*[@id="form"]/div/div/div[1]/div/form/input[3]   ${password}
      

click login button
    Click Button    xpath://*[@id="form"]/div/div/div[1]/div/form/button

click logout button
    Click Link   link=logout

error message should be displayed
    Page Should Contain    Login was unsuccessful. Please correct the errors and try again.

dashboard page should be displayed
    Page Should Contain    dashboard  