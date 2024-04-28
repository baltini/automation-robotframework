*** Settings ***
Resource    ../Pages/LoginPage.robot

*** Keywords ***
Login To ERP
    [Arguments]    ${username}    ${password}
    Open Login Page
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login