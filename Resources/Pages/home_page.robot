*** Settings ***
Library    SeleniumLibrary
Resource   ../Variables/variable.robot 

*** Variables ***
${MENU}                xpath=//*[text()='MENU']
${IMAGE_LOGO}          xpath=//img[@alt='Logo']
${PRODUCT_MANAGEMENT}  xpath=//a[text()='Product Management']
${MERGE_SUGGESTION}    xpath=//a[text()='Merge Suggestion']
${ORDERS}              xpath=//a[text()='Orders']
${USER_MANAGEMENT}     xpath=//a[text()='User Management']
${ACTIVITY_LOG}        xpath=//a[text()='Activity Log']
${USER_LOGIN}          xpath=//*[text()='${USER}']
${LOGOUT}              xpath=//*[text()='Log Out']
${ACCOUNT_SETTINGS}    xpath=//*[text()='Account Settings']