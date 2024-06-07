*** Settings ***
Resource    ../Pages/account_settings_page.robot

*** Keywords ***
Validate Account Settings Page Elements
    Wait Until Element Is Visible    ${LABEL_SETTINGS}
    Wait Until Element Is Visible    ${LABEL_PERSONAL_INFO}
    Wait Until Element Is Visible    ${LABEL_FULL_NAME}
    Wait Until Element Is Visible    ${LABEL_EMAIL}
    Wait Until Element Is Visible    ${LABEL_EMAIL_VARIABLE}
    Wait Until Element Is Visible    ${LABEL_CHANGE_PASSWORD}
    Wait Until Element Is Visible    ${LABEL_NEW_PASSWORD}
    Wait Until Element Is Visible    ${LABEL_CONFIRM_PASSWORD}
    Wait Until Element Is Visible    ${BUTTON_SAVE_SETTINGS}
    Wait Until Element Is Visible    ${BUTTON_SAVE_PASSWORD}
    Wait Until Element Is Visible    ${TEXTBOX_FULL_NAME}
    Wait Until Element Is Visible    ${TEXTBOX_NEW_PASSWORD}
    Wait Until Element Is Visible    ${TEXTBOX_CONFIRM_PASSWORD}

Clear Full Name Textbox
    Clear Element Text               ${TEXTBOX_FULL_NAME}

Click Save Button for Change Password
    Click Button                     ${BUTTON_SAVE_PASSWORD}

Click Save Button for Change Personal Info
    Click Button                     ${BUTTON_SAVE_SETTINGS}

Enter Password with less than 8 characters
    Input Text    ${TEXTBOX_NEW_PASSWORD}    123

Enter Password And Mismatched Confirm Password
    Input Text    ${TEXTBOX_NEW_PASSWORD}        12345678
    Input Text    ${TEXTBOX_CONFIRM_PASSWORD}    12345

