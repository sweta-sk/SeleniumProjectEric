*** Settings *** 
Library    SeleniumLibrary  
Library    OperatingSystem       
    
*** Test Cases ***
TC1_loginl
    Append To Environment Variable  PATH   C:\\component
    Open Browser    url=http://www.echoecho.com/javascript4.htm  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Sleep    2s    
    Click Element    name=B1
    Sleep    2s   
    #with handle alert we accept the popup i.e OK
    ${text}    Handle Alert  
    Log To Console   ${text}  
    

TC2_loginl
    Append To Environment Variable  PATH   C:\\component
    Open Browser    url=http://www.echoecho.com/javascript4.htm  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Sleep    2s    
    Click Element    name=B2
    Sleep    2s   
    #with handle alert we accept the popup i.e OK
    #${text}    Handle Alert    Dismiss
    #Log To Console   ${text}
     Handle Alert     
    Alert Should Be Present    Confirm boxes offer the user a choice of clicking OK or Cancel