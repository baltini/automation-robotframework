*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/login_keywords.robot
Resource          ../Resources/Keywords/home_keywords.robot
Resource          ../Resources/Variables/variable.robot

*** Test Cases ***
Navigate to Home Page
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Validate Home Page Elements
    Close Browser