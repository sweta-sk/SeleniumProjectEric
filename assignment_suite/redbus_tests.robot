*** Settings *** 
Library    SeleniumLibrary  
Library    OperatingSystem 

*** Test Cases ***
TC1_validloginl
    Append To Environment Variable    PATH    C:\\component  
    Open Browser    url=https://www.redbus.in/    browser=chrome    
    Maximize Browser Window
    #Set Selenium Implicit Wait    30s
    #Mouse Over    xpath=//div[@id='select_box_sign']
    #Mouse Over    id=select_box_sign
    #Mouse Over    xpath=//i[@id='i-icon-profile']
    Click Element    xpath=//div[@id='sign-in-icon-down']   
    Click Element    xpath=//li[@id='signInLink']
    Select Frame    xpath=//iframe[@class='modalIframe']
    Input Text    xpath=//input[@type='number']    9040434955  
    #Input Text    xpath=//input[@class='IP']    9040434955 
    #Input Text    xpath=//input[@id='mobileNoInp']    9040434955     
  
