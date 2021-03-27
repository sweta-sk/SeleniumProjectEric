*** Settings ***
Library    DateTime    
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC3_OpenBrowser
    
    Append To Environment Variable    PATH    C:\\Users\\erohrup\\Rohan\\Work\\Robot Framework\\chromedriver_win32
    Open Browser    url=https://magento.com/    browser=chrome
    Maximize Browser Window
    Click Element    link=My Account
    Input Text    id=email    balaji0017@gmail.com
    Input Password     id=pass    balaji@12345
    Click Element     name=send
    Title Should Be    My Account
    Click Element    link=Log Out