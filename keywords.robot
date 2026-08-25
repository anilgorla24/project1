*** Settings ***
Library           SeleniumLibrary

*** Variables ***


*** Test Cases ***
test case 1

    Start TestCase
    Verify Search Results
    Finish TestCase

*** Keywords ***

Start TestCase
    Open Browser    https://ebay.com/    chrome
    Maximize Browser Window

Verify Search Results
    Wait Until Element Is Visible  //*[@id="gh-ac"]    
    Input Text   //*[@id="gh-ac"]   laptop
    Sleep    2s
    Click Element   //*[@id="gh-search-btn"]/span

Finish TestCase
    Sleep    5s 
    Close Browser   