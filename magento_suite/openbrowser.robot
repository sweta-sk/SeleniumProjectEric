*** Settings *** 
Library    SeleniumLibrary  
Library    OperatingSystem       
    

*** Test Cases ***
TC1_openbrowser
    Append To Environment Variable    PATH    C:\\component  
    Open Browser    url=https://magento.com/    browser=chrome    
    Maximize Browser Window