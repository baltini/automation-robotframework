*** Settings ***
Library    SeleniumLibrary
Resource   ../Variables/variable.robot 

*** Variables ***
${LABEL_SETTINGS}                xpath=//*[text()='Settings']
${LABEL_PERSONAL_INFO}           xpath=//*[text()='Personal Information']
${LABEL_FULL_NAME}               xpath=//*[text()='Full Name']
${LABEL_EMAIL}                   xpath=//*[text()='Email Address']
${LABEL_EMAIL_VARIABLE}          xpath=//*[text()='${LOGIN_EMAIL}']
${LABEL_CHANGE_PASSWORD}         xpath=//*[text()='Change Password']
${LABEL_NEW_PASSWORD}            xpath=//*[text()='New Password']
${LABEL_CONFIRM_PASSWORD}        xpath=//*[text()='Confirm Password']

${BUTTON_SAVE_SETTINGS}          xpath=//button[@type='submit' and not(contains(@class, 'mt-3'))]
${BUTTON_SAVE_PASSWORD}          xpath=//button[@type='submit' and contains(@class, 'mt-3')]

${TEXTBOX_FULL_NAME}             xpath=//input[@id='name']
${TEXTBOX_NEW_PASSWORD}          xpath=//input[@id='password']
${TEXTBOX_CONFIRM_PASSWORD}      xpath=//input[@id='confirmPassword']