*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
task check box
    Open Browser    https://the-internet.herokuapp.com/checkboxes    chrome
    Maximize Browser Window
    Sleep    2

    Select Checkbox    xpath://*[@id="checkboxes"]/input[1]
    Unselect Checkbox    xpath://*[@id="checkboxes"]/input[1]

    Select Checkbox    //*[@id="checkboxes"]/input[2]
    Unselect Checkbox    //*[@id="checkboxes"]/input[2]
