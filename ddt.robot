*** Settings ***
Library     SeleniumLibrary
Resource    resource11.robot
Suite Setup    open my browser
Suite Teardown    close browser
Test Template    invalid login 

*** Test Cases ***                   username               password
Right username and empty password    admin@yourstore.com       ${EMPTY}
Right username and wrong password    admin@yourstore.com            xya
wrong username and right password    adm@yourstore.com              xya
wrong username and empty password    adn@yourstore.com          ${EMPTY}
wrong username and wrong password    admn@yourstore.com            xya     
 
*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    input username    ${username}
    input password    ${password}
    click login button    