*** Settings ***
Resource    ../Pages/LoginPage.robot
Resource    ../Variable/Variable.robot

*** Keywords ***
Login To ERP
    [Arguments]    ${username}    ${password}
    Open Login Page
    Wait Until Element Is Visible    ${username}
    Enter Username    ${username}
    Wait Until Element Is Visible    ${password}
    Enter Password    ${password}
    Click Login

Open Login Page
    Open Browser       ${LOGIN_PATH}    ${BROWSER}
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
