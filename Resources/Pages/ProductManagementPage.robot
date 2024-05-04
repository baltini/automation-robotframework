*** Settings ***

*** Variables ***
${SEARCH_FIELD}    xpath=//input[@placeholder='Search by Product Name']
${PRODUCT_IMAGE}   xpath=//img[contains(@class,'object-cover cursor-pointer rounded-lg')]
${PRODUCT_MANAGEMENT_LINK}     xpath=//a[text()='Product Management']
${FIRST_DATA_TABLE_LOCATOR}    xpath=//a[contains(@class,'font-medium text-p')]