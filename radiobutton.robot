*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}      https://www.knowledgeware.in/Automation/practiceform.html


*** Test Cases ***
Select Radio Button
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    5s

# Selecting Radio Button
    Select Radio Button   gender   other
    Sleep  3s

# selecting checkbox 
    Select Checkbox    music
    Select Checkbox    reading
    Sleep  3s

    Unselect Checkbox  music
    Sleep  3s

    Select Checkbox    sports

    Sleep    3s
    Close Browser  

    