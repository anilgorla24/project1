*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}        https://www.knowledgeware.in/Automation/practiceform.html

*** Test Cases ***
Select Dropdown
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s
    
# Input text
    Input Text   //*[@id="fname"]    anil
    Sleep  3s

    Input Text   //*[@id="lname"]    gorla
    Sleep  3s

#radio button
    Select Radio Button   gender  male 
    Sleep  3s

#checkbox
    Select Checkbox    music
    Sleep  3s

    Unselect Checkbox  music
    Sleep  3s

    Select Checkbox    sports
    Sleep  3s 

# Selecting dropdown
    Select From List By Label    countrySelect    UttarPradesh
    Sleep  5s

    Select From List By Index    countrySelect    4
    Sleep  5s

    Close Browser

