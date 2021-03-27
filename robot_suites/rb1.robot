*** Settings ***

Library    SeleniumLibrary    

***Variable***
#single variable
${BROWSER}    chrome
#collection variable
@{COLORS}    red    blue    green 
#dictionary
&{dc}    username=sweta    password=sweta123




*** Test Cases ***
TC1
    Log To Console    ${BROWSER}
    Log To Console   ${COLORS}[0]  
    
    Log To Console   ${dc}[username]    
    

    @{Colors}    Create List     yellow    blue    green   
    Log To Console   ${Colors}[0]   
    
    &{dics}    Create Dictionary    username=sweta    password=sweta123
    Log To Console   ${dics}[password]   