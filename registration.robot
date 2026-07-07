*** Settings ***
Library     SeleniumLibrary
Variables    locators.py

*** Keywords ***
open my browser
    [Arguments]    ${URL}    ${BROWSER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${txt_firstname}    timeout=15s

enter first name
    [Arguments]    ${first_name}
    Input Text    ${txt_firstname}    ${first_name}

enter last name
    [Arguments]    ${last_name}
    Input Text    ${txt_lastname}    ${last_name}

enter address
    [Arguments]    ${address}
    Scroll Element Into View    ${txt_address}
    Input Text    ${txt_address}    ${address}

enter email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}

enter phone number
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}

enter gender
    [Arguments]    ${gender}
    Execute Javascript
    ...    document.querySelector("input[ng-model='radiovalue'][value='Male']") && document.querySelector("input[ng-model='radiovalue'][value='Male']").click() || document.querySelector("input[value='Male']").click()

enter hobbies
    [Arguments]    ${HOBBIES}
    Execute Javascript
    ...    document.querySelector("input[value='Cricket']").click()

enter languages
    [Arguments]    ${LANGUAGE}
    Execute Javascript
    ...    var opts=document.querySelectorAll("#msddList li a");for(var i=0;i<opts.length;i++){if(opts[i].innerText.trim()==='English'){opts[i].click();break;}}

enter skills
    [Arguments]    ${SKILLS}
    Scroll Element Into View    ${txt_skills}
    Select From List By Label    ${txt_skills}    ${SKILLS}

enter country
    [Arguments]    ${COUNTRY}
    Scroll Element Into View    ${txt_select_country}
    Select From List By Label    ${txt_select_country}    ${COUNTRY}


enter select country
    [Arguments]    ${SELECT_COUNTRY}
    Click Element    xpath=//span[@aria-labelledby='select2-country-container']
    Wait Until Element Is Visible    xpath=//input[@class='select2-search__field']    
    Input Text    xpath=//input[@class='select2-search__field']    ${SELECT_COUNTRY}
    Click Element    xpath=//li[contains(text(),'${SELECT_COUNTRY}')]

enter date of birth
    [Arguments]    ${DOB}
    Scroll Element Into View    ${txt_years}
    Select From List By Label    ${txt_years}     2002
    Select From List By Label    ${txt_months}    March
    Select From List By Label    ${txt_days}      24

enter password
    [Arguments]    ${PASSWORD}
    Scroll Element Into View    ${txt_password1}
    Input Text    ${txt_password1}    ${PASSWORD}

enter confirm password
    [Arguments]    ${CONFIRM_PASSWORD}
    Input Text    ${txt_password2}    ${CONFIRM_PASSWORD}

submit form
    Scroll Element Into View    ${btn_register}
    Click Button        ${btn_register}

verify registration successful
    Wait Until Page Contains     thank   10s