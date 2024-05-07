*** Settings ***

*** Variables ***
${SET_ARCHIVED_BUTTON}    xpath=//button/span[contains(text(),'Set status')]
${MERGE_BUTTON}           xpath=//button/span[contains(text(),'Merge')]
${ARCHIVE_BUTTON}         xpath=//button/span[contains(text(),'Archive')]
${ITEM_CHECKBOX_LIST}     xpath=//td/div[contains(@class,'relative')]  

# Merge Product
${TITLE_BUTTON}              xpath=//button[@type='button']
${CATEGORY_BUTTON}           xpath=//button[@type='button'][1]
${PRODUCT_TYPE_BUTTON}       xpath=//button[@type='button'][2]
${TITLE_DROPDOWN_LIST}       xpath=//ul/li[contains(@class,'cursor')]/div
${MERGE_BUTTON_PRODUCT}      xpath=//button/span[text()='Merge']
${MERGE_CONFIRMATION}        Do you want to merge this product?
${MERGE_CONFIRM_BUTTON}      xpath=//button[@class='swal2-confirm swal2-styled']