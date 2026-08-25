*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouse Operation
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize Browser Window

    Wait Until Page Contains Element     xpath://*[@class="context-menu-one btn btn-neutral"]    
    Open Context Menu                 xpath://*[@class="context-menu-one btn btn-neutral"]
    Sleep    2s
    Close Browser