*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
get all links
    Open Browser    https://www.ebay.com/    Chrome
    Maximize Browser Window

    ${links}=   Get Element Count  xpath://a
    Log To Console  Total Links: ${links}

    FOR    ${i}   IN RANGE   1   5
      ${link}=  Get Text  xpath:(//a)[${i}]
      Log To Console  ${link}   
    END
    
    Close Browser