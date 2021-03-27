*** Settings *** 
Library    SeleniumLibrary  
Library    OperatingSystem       
    

*** Test Cases ***
TC1_emr_loginl
    Append To Environment Variable  PATH   C:\\component
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser    admin 
    Input Password    id=clearPass    pass
    #Select From List By Label    name=languageChoice    English(Indian)  
    #Select From List By Label  name=languageChoice English (Indian)
    Select From List By Value    name=languageChoice    18     
    Click Element   xpath=//button[@type='submit'] 
       
    Title Should Be    OpenEMR    
    Page Should Contain    Flow Board    
    Mouse Over    id=username
    Click Element    xpath=//li[text()='Logout']    
    

TC1_emr_invalidloginl
  Append To Environment Variable  PATH   C:\\component
    Open Browser    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser    admin123 
    Input Password    id=clearPass    pass
    Select From List By Value    name=languageChoice    18   
    Click Element    xpath=//button[@type='submit'] 
    
#Check for exact text   
    Element Text Should Be    xpath=//div[contains(text(),'Invalid')]    Invalid username or password   
    
#check for given text contains or not
    Element Should Contain    xpath=//div[contains(text(),'Invalid')]    Invalid username or password     