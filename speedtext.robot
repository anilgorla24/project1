*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
speed test
    ${speed}=  Get Selenium Speed
    Log To Console  Selenium Speed is ${speed}
    # Default Selenium Speed is 0 seconds

    Open Browser  https://demowebshop.tricentis.com/register  chrome
    Maximize Browser Window
  
    Set Selenium Speed  1s
    Select Radio Button  Gender  M
    Input Text   name=FirstName  anil
    Input Text   name=LastName  gorla
    Input Text   name=Email   anil@gmail.com
    Input Text   name=Password    anil123
    Input Text   name=ConfirmPassword   anil123    

    Wait Until Element Is Visible    xpath=//button[contains(., "Register")]    10s
   Click Element    xpath=//button[contains(., "Register")]

    

    ${speed}=  Get Selenium Speed
    Log To Console  Selenium Speed is ${speed}
    Close Browser
