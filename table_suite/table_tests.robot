*** Settings *** 
Library    SeleniumLibrary  
Library    OperatingSystem       

*** Test Cases ***

tc3_advancedforloop_getwebelements
    Append To Environment Variable      PATH   C:\\component
    Open Browser    url=https://www.google.com/  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    
    ${link count}  Get Element Count    //table[@id='example']/tbody/tr
    Log     ${link count}
    
    ${elements}  Get WebElements    //a
    FOR    ${element}    IN    @{elements}
           ${text}    Get Text  ${elements}
           Log To Console    ${text} 
           Run Keyword If   ' ${text}'=='Images'    Click Element    ${elements}
           Exit For Loop If    ' ${text}'=='Images' 
    END 