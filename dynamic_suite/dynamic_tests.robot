*** Settings *** 
Library    SeleniumLibrary  
Library    OperatingSystem       
    

*** Test Cases ***
TC1_login2
    Append To Environment Variable  PATH   C:\\component
    Open Browser    url=https://www.royalcaribbean.com/  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    #${count}    Get Element Count    //*[@class='email-capture_close']
    #Run Keyword If    ${count}>0    Click Element    //*[@class='email-capture_close']
    
    Run Keyword And Ignore Error    Click Element    //*[@class='email-capture__close']        