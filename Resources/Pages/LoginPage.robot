*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${LOGIN_PAGE_TITLE}    Baltini ERP
${USERNAME_FIELD}      xpath=//input[@placeholder='Enter your email']
${PASSWORD_FIELD}      xpath=//input[@type='password']
${LOGIN_BUTTON}        xpath=//span[text()='Sign In']

*** Keywords ***
Open Login Page
    Open Browser    https://baltini-erp-web-staging-2vrwqmx2ba-as.a.run.app/login    Chrome
    Title Should Be    ${LOGIN_PAGE_TITLE}
    Maximize Browser Window

Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login
    Click Element    ${LOGIN_BUTTON}



