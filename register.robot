*** Settings ***
Library           SeleniumLibrary
*** Test Cases ***
register
    Open Browser    https://demo.automationtesting.in/Register.html#google_vignette    Chrome
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input    gorla
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input    anil
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[2]/div/textarea    hyderabad
    Input Text    xpath://*[@id="eid"]/input    gorla@gmail.com
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[4]/div/input   9876543210
    Select Radio Button    radiooptions   Male
    Select Checkbox    id=checkbox1
    Select Checkbox    id=checkbox2
    Click Element    id=msdd  
    Click Element    xpath://*[@id="msdd"]
    Select From List By Value    id=Skills    Data Analytics
    
    
