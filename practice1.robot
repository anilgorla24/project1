*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
test case 1
    Open Browser    https://testautomationpractice.blogspot.com/    Chrome
    Maximize Browser Window
    Sleep    2s

    # Input Text    //*[@id="name"]    ANIL
    # Sleep    1s

    # Input Text    //*[@id="email"]    anil@gmail.com
    # Sleep    1s

    # Input Text    //*[@id="phone"]    9876543210
    # Sleep    1s

    # Input Text    //*[@id="textarea"]    chandanagar,Hyderabad
    # Sleep    1s

    # Select Radio Button    gender    male    
    # Sleep    1s
    # Click Element    //*[contains(@name,'gender')and@value='male']
    # Sleep    1s

    # Select Radio Button    gender    female
    # Sleep    1s
    # Click Element    //*[contains(@type,"radio") and @value="female"]
    # Sleep    1s

    # Click Element    //*[contains(@type,"checkbox")and @value="sunday"]
    # Sleep    1s
    # Select Checkbox    sunday
    # Sleep    1s

    # Click Element    //*[contains(@type,"checkbox")and @value="monday"]
    # Select Checkbox    monday
    # Sleep    1s

    # Click Element    //*[contains(@id,"country")and //@value="germany"]
    # Sleep    3s

    