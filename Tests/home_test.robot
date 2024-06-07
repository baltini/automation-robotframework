*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/login_keywords.robot
Resource          ../Resources/Keywords/home_keywords.robot
Resource          ../Resources/Variables/variable.robot

*** Test Cases ***
Navigate to Home Page
    [Documentation]  Validate that Home Page is displayed
    Login To ERP    ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}  
    Validate Home Page Elements
    Close Browser