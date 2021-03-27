*** Settings ***
Library    DateTime    

*** Test Cases ***
TC1_ValidCredential
    Log To Console    sweta    
    Log To Console    india   
    Log    sweta    
    
Tc2_PrintDate
   ${date}  Get Current Date 
   Log To Console    ${date}  
   ${name}  Set Variable    sweta
   Log To Console    ${name}         