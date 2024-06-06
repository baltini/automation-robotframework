*** Settings ***
Resource    ../Pages/login_page.robot
Resource    ../Variables/variable.robot

*** Keywords ***
Login To ERP
    [Arguments]    ${username}    ${password}
    Open Login Page
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login

Open Login Page
    Open Browser       ${LOGIN_PATH}    ${BROWSER}
    Title Should Be    ${LOGIN_PAGE_TITLE}
    Maximize Browser Window

Enter Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${username}

Enter Password
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login
    Click Element    ${LOGIN_BUTTON}
