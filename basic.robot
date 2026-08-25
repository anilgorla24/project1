*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
test case 1
   Open Browser    https://demo.automationtesting.in/Register.html    Chrome
   Maximize Browser Window
   Sleep    1s

   Input Text    //input[@placeholder="First Name"]    ANIL
   Sleep    1s

   Input Text    //input[@placeholder="Last Name"]    GORLA
   Sleep    1s
   
   Input Text    //textarea[@rows="3"]    Chandanagar
   Sleep    1s

   Input Text    //input[@type="email"]    anil@gmail.com
   Sleep    1s

   Input Text    //input[@type="tel"]    987654321
   Sleep    1s

   Select Radio Button    radiooptions    Male
   Sleep    1s

   Select Radio Button    radiooptions    FeMale
   Sleep    1s

   Select Checkbox   //input[@id="checkbox1"] 
   Sleep    1s    

   Select Checkbox    //input[@id="checkbox2"]
   Sleep    1s

   Select Checkbox    //input[@value="Hockey"]
   Sleep    1s


   Click Element    //*[@id="msdd"]
   Sleep    1s
   Click Element    //*[contains(@class,"ng-scope")][3]
   Sleep    1s
   Click Element    //*[contains(@class,"ng-scope")][8]
   Sleep    1s

   Select From List By Label    //*[@id="Skills"]    Adobe InDesign
   Sleep    1s

   Click Element    //*[@id="countries"]
   Sleep    1s
   
   Select From List By Value    id=country    Australia
   Sleep    1s

   Select From List By Value    //*[@id="yearbox"]    2002
   Sleep    1s

   Select From List By Value    //*[@ng-model="monthbox"]    March
   Sleep    1s

   Select From List By Value    //*[@id="daybox"]    24
   Sleep    1s
   
   Input Password    //*[@id="firstpassword"]    Anil@242424
   Sleep    1s

   Input Password    //*[contains(@ng-model,"CPassword")]    Anil@242424
   Sleep    1s

    # Click Button    //*[@value="Refresh"]
   Click Button    //*[@id="submitbtn"]
   Sleep    2s
    

    



   

    

   

   
