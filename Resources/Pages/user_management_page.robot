*** Settings ***
Library    SeleniumLibrary
Resource   ../Variables/variable.robot 

*** Variables ***
${USER_MANAGEMENT_LINK}            xpath=//div[contains(text(),'User Management')]
${LABEL_USER_MANAGEMENT}            xpath=//h2[text()='User Management']
${LABEL_SEARCH}                     xpath=//*[text()='Search']
${LABEL_USERNAME}                   xpath=//*[text()='User Name']
${LABEL_EMAIL}                      xpath=//*[text()='Email']
${TEXTBOX_SEARCH}                   xpath=//input[@placeholder='Search by User Name']
${BUTTON_CREATE_USER}               xpath=//*[text()='Create User']

${LABEL_CREATE_USER}                xpath=//*[text()='Create User']
${LABEL_CREATE_USERNAME}            xpath=//*[text()='User Name']
${LABEL_CREATE_PASSWORD}            xpath=//*[text()='Account Password']
${LABEL_CREATE_EMAIL}               xpath=//*[text()='Email']

${TEXTBOX_USERNMAE}                 xpath=//input[@id='name']
${TEXTBOX_PASSWORD}                 xpath=//input[@id='password']
${TEXTBOX_EMAIL}                    xpath=//input[@id='email']

${BUTTON_CANCEL}                    xpath=//*[text()='CANCEL']
${BUTTON_SAVE}                      xpath=//*[text()='SAVE']