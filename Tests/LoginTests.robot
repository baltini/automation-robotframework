*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot
Resource          ../Resources/Keywords/HomeKeywords.robot


*** Test Cases ***
Login with valid Username and Password
    Login To ERP    admin1@gmail.com    secret123
    Home page should have    MENU
    Close Browser


Login with invalid Username and Password
    Login To ERP    admin1@gmail.com    secret1234
    Wait Until Page Contains    Credentials don't match with our data
    Close Browser