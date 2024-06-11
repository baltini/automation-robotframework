*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/login_keywords.robot
Resource          ../Resources/Keywords/home_keywords.robot
Resource          ../Resources/Keywords/db_keywords.robot
Resource          ../Resources/Keywords/user_management_keywords.robot
Resource          ../Resources/Variables/variable.robot

*** Test Cases ***
Navigate to Account Settings
    [Documentation]  Validate that User Management is displayed
    Login To ERP    ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}  
    Validate Home Page Elements
    Open User Management Page
    Validate User Management Page Elements
    Close Browser

Validate Empty Textbox Shows Error Message
    [Documentation]  Validate that an error message is displayed when the textbox is left empty and submitted.
    Login To ERP    ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}  
    Validate Home Page Elements
    Open User Management Page
    Validate User Management Page Elements
    Click Create User Button
    Validate Create User Page Elements
    Click Save Button
    Page Should Contain    The Name field is required
    Page Should Contain    The Password field is required
    Page Should Contain    The Email field is required
    Close Browser

Validate Textbox Invalid Password And Email Format
    [Documentation]  Validate that an error message is shown when an invalid password format is entered into the textbox.
    Login To ERP    ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}  
    Validate Home Page Elements
    Open User Management Page
    Validate User Management Page Elements
    Click Create User Button
    Validate Create User Page Elements
    Enter Password User    123
    Page Should Contain    Password must be at least 8 characters
    Enter Email User    asd
    Page Should Contain    The Email field must be a valid email address
    Close Browser

Register User With Valid Data
    [Documentation]    Registers a user with valid username, email, and password
    Delete User Test From Database
    Login To ERP    ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}  
    Validate Home Page Elements
    Open User Management Page
    Validate User Management Page Elements
    Click Create User Button
    Validate Create User Page Elements
    Enter Username User    ${CREATE_USER}
    Enter Password User    ${CREATE_USER_PS}   
    Enter Email User       ${CREATE_USER_EMAIL}
    Click Save Button
    Wait Until Page Contains    User created!
    Close Browser

Register User With Existing Email
    [Documentation]    Registers a user with an existing email
    Login To ERP    ${LOGIN_EMAIL}     ${LOGIN_PASSWORD}  
    Validate Home Page Elements
    Open User Management Page
    Validate User Management Page Elements
    Click Create User Button
    Validate Create User Page Elements
    Enter Username User    ${CREATE_USER}
    Enter Password User    ${CREATE_USER_PS}   
    Enter Email User       ${CREATE_USER_EMAIL}
    Click Save Button
    Wait Until Page Contains    Email address already registered.
    Close Browser