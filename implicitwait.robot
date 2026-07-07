*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
implicit wait test
    ${speed}=  Get Selenium Implicit Wait
    Log To Console  Selenium Implicit Wait is ${speed}
    # Default Selenium Implicit Wait is 0 seconds

    Open Browser  https://demowebshop.tricentis.com/register  chrome
    Maximize Browser Window
  
    Set Selenium Speed  1s
    Wait Until Page Contains  Register
                                                    
    Select Radio Button  Gender  M
    Input Text   name=FirstName  anil
    Input Text   name=LastName  gorla
    Input Text   name=Email   anil@gmail.com
    Input Text   name=Password    anil123
    Input Text   name=ConfirmPassword   anil123

    Close Browser

 Select Radio Button  Gender  M
    Input Text   name=FirstName  anil
    Input Text   name=LastName  gorla
    Input Text   name=Email   anil@gmail.com
    Input Text   name=Password    anil123
    Input Text   name=ConfirmPassword   anil123
