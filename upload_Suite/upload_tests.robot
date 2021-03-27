*** Settings *** 
Library    SeleniumLibrary  
Library    OperatingSystem 

*** Test Cases ***
TC1_validloginl
    Append To Environment Variable    PATH    C:\\component  
    Open Browser    url=https://www.naukri.com/    browser=chrome    
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Choose File    //*[@id='file_upload']   file_path
    Wait Until Page Contains    uploaded Successfully    50s
    Page Should Contain    uploaded Successfully        
    

TC2_var
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}    
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${TEMPDIR}   
    Log To Console    ${TEST_NAME} 
    Log To Console    $   
    

tc_3
    Append To Environment Variable    PATH    C:\\component  
    Open Browser    url=https://www.naukri.com/    browser=chrome    
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Choose File    //*[@id='file_upload']   ${EXECDIR}\\sweta_resume.comC
    Wait Until Page Contains    uploaded Successfully    50s
    Page Should Contain    uploaded Successfully        
        