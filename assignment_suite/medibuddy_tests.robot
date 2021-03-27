*** Settings *** 
Library    SeleniumLibrary  
Library    OperatingSystem 

*** Test Cases ***
TC1_validloginl
    Append To Environment Variable    PATH    C:\\component  
    Open Browser    url=https://www.medibuddy.in/    browser=chrome    
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Button    xpath=//button[@class='No thanks']  
    Click Link    xpath=//a[@ng-click='userSignin(true)']     
    #Click Button    xpath=//a[@ng-click='userSignin(true)'] 
    Input Text    xpath=//input[@name='firstName']    sweta
    Input Text    xpath=//input[@name='phone']    9040434955    
    Input Text    xpath=//input[@name='username']    swetakri712@gmail.com
    Input Password    xpath=//input[@name='password']    Sweta@131    
    #Checkbox Should Be Selected    xpath=//input[@type='checkbox'] 
    #Select Checkbox    xpath=//label[@class='showpass']
    Select Checkbox    xpath=//input[@type='checkbox']     
    Click Element    xpath=//button[@type='submit']   
               
     