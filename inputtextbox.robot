*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}       https://flipkart.com 

*** Test Cases ***
Test Case 1
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Run Keyword And Ignore Error    Wait Until Element Is Visible    //button[text()='✕']    5s
    Run Keyword And Ignore Error    Click Element    //button[text()='✕']
    Wait Until Element Is Visible  //*[@name='q']    
    Input Text   //*[@name='q']   mobile
    Sleep    2s
    Click Element   //button[@type='submit']
    Sleep    5s 
    Close Browser






   

   
 