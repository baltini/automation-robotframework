*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/login_keywords.robot
Resource          ../Resources/Keywords/home_keywords.robot
Resource          ../Resources/Keywords/account_settings_keywords.robot
Resource          ../Resources/Variables/variable.robot

*** Test Cases ***
Navigate to Account Settings
    [Documentation]  Validate that Account Settings is displayed
    Login To ERP    ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}  
    Validate Home Page Elements
    Naviate to Account Settings
    Validate Account Settings Page Elements
    Close Browser

Validate Empty Textbox Shows Error Message
    [Documentation]  Validate that an error message is displayed when the textbox is left empty and submitted.
    Login To ERP    ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}  
    Validate Home Page Elements
    Naviate to Account Settings
    Validate Account Settings Page Elements
    Wait Until Page Contains    Automation Test User
    Clear Full Name Textbox
    Click Save Button for Change Personal Info
    Page Should Contain    The Name field is required
    Click Save Button for Change Password
    Page Should Contain    The Password field is required
    Page Should Contain    The Confirm Password field is required
    Close Browser

Validate Textbox Invalid Password Format
    [Documentation]  Validate that an error message is shown when an invalid password format is entered into the textbox.
    Login To ERP    ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}  
    Validate Home Page Elements
    Naviate to Account Settings
    Validate Account Settings Page Elements
    Wait Until Page Contains    Automation Test User
    Enter Password with less than 8 characters
    Page Should Contain    Password must be at least 8 characters
    Enter Password And Mismatched Confirm Password
    Page Should Contain    Sorry, the password confirmation does not match. Please double-check your password.
    Click Save Button for Change Password
    Page Should Not Contain    Product ID
    Close Browser