*** Settings ***

*** Variables ***
${PAGE_TITLE}                xpath=//h2[text()='Merge Suggestion']
${PRODUCT_SYMBOL}            xpath=//a[@href='/product/product-management' and contains(@class,'group')]
${MERGE_SUGGESTION_LINK}     xpath=//div[normalize-space()='Merge Suggestion']


${CATEGORY_DROP_DOWN}        xpath=//label[text()='Category']/following-sibling::div
${PRODUCT_TYPE_DROPDWON}     xpath=//label[text()='Product Type']/following-sibling::div
${VENDOR_DROP_DOWN}          xpath=//label[text()='Vendor']/following-sibling::div
${STATUS_DROP_DOWN}          xpath=//label[text()='Status']/following-sibling::div
${DATE_FILTER}               xpath=//input[@placeholder='DD MMM YYYY ~ DD MMM YYYY'] 
${DATE_THIS_MONTH}           xpath=//*[contains(@class,'whitespace-nowrap w-1/2')][5]
${SEARCH_TEXT}               xpath=//input[@placeholder='Search by Product ID']

${FIRST_PRODUCT_ID}          xpath=//a[contains(@class,'hover:underline')]