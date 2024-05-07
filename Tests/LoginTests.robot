*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot
Resource          ../Resources/Keywords/HomeKeywords.robot
Resource          ../Resources/Variable/Variable.robot


*** Test Cases ***
Login with valid Username and Password
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Home Page Should Contains Menu    
    Close Browser

Login with valid Username and Password then logout
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Home Page Should Contains Menu
    Perfoming Logout
    Close Browser

Login with invalid Username and Password
    Login To ERP    ${INVALID_EMAIL}     ${INVALID_PASS}  
    Wait Until Page Contains    Credentials don't match with our data
    Close Browser