*** Settings ***
Resource    ../Pages/user_management_page.robot
Resource    ../Variables/variable.robot

Library    SeleniumLibrary

*** Keywords ***
Open User Management Page
    Wait Until Element Is Visible    ${USER_MANAGEMENT_LINK}
    Click Element                    ${USER_MANAGEMENT_LINK}

Validate User Management Page Elements
    Wait Until Element Is Visible    ${LABEL_USER_MANAGEMENT}   
    Wait Until Element Is Visible    ${LABEL_SEARCH}
    Wait Until Element Is Visible    ${LABEL_USERNAME}
    Wait Until Element Is Visible    ${LABEL_EMAIL}
    Wait Until Element Is Visible    ${TEXTBOX_SEARCH}
    Wait Until Element Is Visible    ${BUTTON_CREATE_USER}

Click Create User Button
    Click Element                    ${BUTTON_CREATE_USER}
    
Validate Create User Page Elements
    Wait Until Element Is Visible    ${LABEL_CREATE_USER}   
    Wait Until Element Is Visible    ${LABEL_CREATE_USERNAME}
    Wait Until Element Is Visible    ${LABEL_CREATE_PASSWORD}
    Wait Until Element Is Visible    ${LABEL_CREATE_EMAIL}
    Wait Until Element Is Visible    ${TEXTBOX_USERNMAE}
    Wait Until Element Is Visible    ${TEXTBOX_PASSWORD}
    Wait Until Element Is Visible    ${TEXTBOX_EMAIL}
    Wait Until Element Is Visible    ${BUTTON_CANCEL}
    Wait Until Element Is Visible    ${BUTTON_SAVE}

Click Save Button
    Wait Until Element Is Enabled    ${BUTTON_SAVE}
    Click Element                    ${BUTTON_SAVE}

Enter Password User
    [Arguments]    ${password}
    Input Text    ${TEXTBOX_PASSWORD}     ${password}

Enter Email User
    [Arguments]    ${email}
    Input Text    ${TEXTBOX_EMAIL}    ${email}

Enter Username User
    [Arguments]    ${username}
    Input Text    ${TEXTBOX_USERNMAE}    ${username}