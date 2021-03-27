*** Settings *** 
Library    SeleniumLibrary  
Library    OperatingSystem       
    

*** Test Cases ***
TC1_loginl
    Append To Environment Variable  PATH   C:\\component
    Open Browser    url=https://www.google.com/  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    ${title}  Get Title 
    Log     ${title}
    ${url}  Get Location 
    Log     ${title}
    
    Get Source
    ${link count}  Get Element Count    //a
    Log     ${link count}
    

tc2_getwebelements
      Append To Environment Variable  PATH   C:\\component
    Open Browser    url=https://www.google.com/  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s

    ${elements}  Get WebElements    //a
    Log     ${elements}  
    
    ${count}  Get Element Count    //a
    Log     ${count}
    FOR    ${i}    IN RANGE    0    ${count}
           ${href}    Get Element Attribute   ${elements}[${i}]    href
    Log To Console    ${href}
    
#for text    
    END
    FOR    ${i}    IN RANGE    0    ${count}
           ${text}    Get Text  ${elements}[${i}] 
           Log To Console    ${text} 
           Run Keyword If   ' ${text}'=='Images'    Click Element    ${elements}[${i}]
           Exit For Loop If    ' ${text}'=='Images'           
    END
    

tc3_advancedforloop_getwebelements
      Append To Environment Variable  PATH   C:\\component
    Open Browser    url=https://www.google.com/  browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    
    ${elements}  Get WebElements    //a
    FOR    ${element}    IN    @{elements}
           ${text}    Get Text  ${elements}
           Log To Console    ${text} 
           Run Keyword If   ' ${text}'=='Images'    Click Element    ${elements}
           Exit For Loop If    ' ${text}'=='Images' 
    END 