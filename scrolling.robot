*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
scrolling

    Open Browser  https://www.amazon.com/    Chrome
    Maximize Browser Window
    Sleep  2s
    # Execute Javascript  window.scrollTo(0, 500)
    Wait Until Element Is Visible  xpath://*[@alt="Project Hail Mary: A Novel"]
    # Scroll Element Into View   xpath://*[@alt="Project Hail Mary: A Novel"]
    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep  3s
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)
    Sleep  2s
    Close Browser