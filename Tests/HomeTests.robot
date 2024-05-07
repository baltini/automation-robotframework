*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot
Resource          ../Resources/Keywords/HomeKeywords.robot
Resource          ../Resources/Variable/Variable.robot

*** Test Cases ***
Navigate to Home Page
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Home Page Should Contains Menu
    Close Browser