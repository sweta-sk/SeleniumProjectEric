*** Settings *** 
Library    SeleniumLibrary  
Library    OperatingSystem 

*** Test Cases ***
TC1_validloginl
    Append To Environment Variable    PATH    C:\\component  
    Open Browser    url=https://www.db4free.net/    browser=chrome    
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    ${title}  Get Title   
    Log To Console    ${title}
    Click Element  xpath=//b[contains(text(),'phpMyAdmin')]
    Switch Window  phpMyAdmin
    Input Text     id=input_username     db123
    Input Password     id=input_password     test123
    Click Element     id=input_go
    Element Should Contain     xpath=(//div[@role='alert'])[2]     Cannot log in to the MySQL server
    Close Window
    Switch Window    db4free.net - MySQL Database for free   
    ${title}  Get Title 
    Log To Console    ${title}
    


 tC2_validloginl
    Append To Environment Variable    PATH    C:\\component  
    Open Browser    url=https://www.db4free.net/    browser=chrome    
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    ${title}  Get Title   
    Log To Console    ${title}
    Click Element  xpath=//b[contains(text(),'phpMyAdmin')]
    Switch Window  New
    Input Text     id=input_username     db123
    Input Password     id=input_password     test123
    Click Element     id=input_go
    Element Should Contain     xpath=(//div[@role='alert'])[2]     Cannot log in to the MySQL server
    Close Window
    Switch Window    Main  
    ${title}  Get Title 
    Log To Console    ${title}   