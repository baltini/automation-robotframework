*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/login_keywords.robot
Resource          ../Resources/Keywords/home_keywords.robot
Resource          ../Resources/Variables/variable.robot


*** Test Cases ***
Login With Valid Username and Password
    Login To ERP    ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}  
    Validate Home Page Elements    
    Close Browser

Login with Valid Username and Password Then logout
    Login To ERP    ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}  
    Validate Home Page Elements
    Perfoming Logout
    Close Browser

Login With Invalid Username and Password
    Login To ERP    ${INVALID_EMAIL}     ${INVALID_PASS}  
    Wait Until Page Contains    Credentials don't match with our data
    Close Browser

Empty Username and Password
    Open Login Page
    Click Login
    Wait Until Page Contains    Email field is required
    Wait Until Page Contains    The Password field is required
    Close Browser

