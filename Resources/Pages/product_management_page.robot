*** Settings ***
Resource   ../Variables/variable.robot 

*** Variables ***
${SEARCH_FIELD}    xpath=//input[@placeholder='Search by Product Name']
${PRODUCT_SEARCH_NAME}   xpath=//a[text()='${PRODUCT_NAME}']
${PRODUCT_MANAGEMENT_LINK}     xpath=//div[contains(text(),'Product Management')]
${FIRST_DATA_TABLE_LOCATOR}    xpath=//a[contains(@class,'font-medium text-p')]

