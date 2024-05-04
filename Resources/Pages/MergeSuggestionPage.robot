*** Settings ***

*** Variables ***
${PAGE_TITLE}                xpath=//h2[text()='Merge Suggestion']
${MERGE_SUGGESTION_LINK}     xpath=//a[text()='Merge Suggestion' and contains(@class,'flex')]

${CATEGORY_DROP_DOWN}        xpath=//label[text()='Category']/following-sibling::div
${PRODUCT_TYPE_DROPDWON}     xpath=//label[text()='Product Type']/following-sibling::div
${VENDOR_DROP_DOWN}          xpath=//label[text()='Vendor']/following-sibling::div
${STATUS_DROP_DOWN}          xpath=//label[text()='Status']/following-sibling::div
${DATE_FILTER}               xpath=//label[text()='Date Filter']/following-sibling::div 
${SEARCH_TEXT}               xpath=//input[@placeholder='Search by Product ID']

${FIRST_PRODUCT_ID}          xpath=//a[contains(@class,'hover:underline')]