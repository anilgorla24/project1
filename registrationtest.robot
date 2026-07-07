*** Settings ***
Library      SeleniumLibrary
Resource     registration.robot

*** Variables ***
${URL}       https://demo.automationtesting.in/Register.html
${BROWSER}   Chrome

*** Test Cases ***
TC01 Verify registration with valid data
    open my browser         ${URL}    ${BROWSER}
    enter first name        Anil
    enter last name         Gorla
    enter address           chinndandluru 1-32
    enter email             anil@gmail.com
    enter phone number      1234567890
    enter gender            Male
    enter hobbies           Cricket
    enter languages         English
    enter skills            Python
    enter country           select_country
    enter select country    India
    enter date of birth     2002-03-24
    enter password          Password123
    enter confirm password  Password123
    submit form
    verify registration successful