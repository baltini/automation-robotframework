*** Settings ***

*** Variables ***
${ADD_IMAGE_BUTTON}        xpath=//span[normalize-space()='Add New Image']
${SAVE_UPDATE_BUTTON}      xpath=//button/span[text()='Save Update']

${PRODUCT_VARIAN_LABEL}    xpath=//*[text()='Product Variants']
${PRODUCT_IMAGE_LINK}      https://t.ly/SDB6W
${LAST_PRODUCT_IMAGE}      xpath=//td/div[@class='flex justify-center'][last()]

${PRODUCT_NAME_FIELD}    xpath=//input[@type='text'][1]
${DESCRIPTION_FIELD}     xpath=//div[@class='col-span-3']//p[3]
${MATERIAL_FIELD}        xpath=//label[text()='Material']//following-sibling::div//input
${ORIGIN_FIELD}          xpath=//label[text()='Origin']//following-sibling::div//input
${PRODUCT_ID_FIELD}      xpath=//label[text()='Product ID']//following-sibling::div//input
${CATEGORY_FIELD}        xpath=//label[text()='Category']//following-sibling::div//input
${PRODUCT_TYPE_FIELD}    xpath=//label[text()='Product Type / Sub Category']//following-sibling::div//input
${TAGS_FIELD}            xpath=//input[@placeholder='Type new tag and press enter']
${TABLE_XPATH}           xpath=//table[@class='table-product-image']
${IMAGE_FIELD_1}         xpath=//tr[@data-id='product-image-0']//input
${IMAGE_FIELD_2}         xpath=//tr[@data-id='product-image-1']//input
${IMAGE_FIELD_3}         xpath=//tr[@data-id='product-image-2']//input
${IMAGE_FIELD_4}         xpath=//tr[@data-id='product-image-3']//input
${IMAGE_NEW_FIELD}       xpath=//td[@class='ignore-elements']//input[@value='']
${PRODUCT_VARIANT_1}     xpath=//table[@class='table-product-variant']//input[1]
${PRODUCT_VARIANT_2}     xpath=//table[@class='table-product-variant']//input[2]   

${PRODUCT_STATUS_DROP_DOWN}    xpath=//label[text()='Product Status']//following-sibling::div//button
${SEASON_DROP_DOWN}            xpath=//label[text()='Season']//following-sibling::div//button
${COLOR_DROP_DOWN}             xpath=//label[text()='Color']//following-sibling::div//button
${SIZE_CHECKING_DROP_DOWN}     xpath=//label[text()='Size Checking Issues']//following-sibling::div//button

${PRODUCT_NAME_VALUE}        PRODUCT_NAME_EDIT    
${PRODUCT_STATUS_VALUE}      Archived 
${DESCRIPTION_VALUE}         DESCRIPTION_EDIT
${MATERIAL_VALUE}            MATERIAL_EDIT
${ORIGIN_VALUE}              ORIGIN_EDIT               
${PRODUCT_ID_VALUE}          PRODUCT_ID_EDIT
${PRODICT_VARIANT_TITLE}     IT 99
${CATEGORY_VALUE}            CATEGORY_EDIT
${PRODUCT_TYPE_VALUE}        PRODUCT_TYPE_EDIT
${TAGS_VALUE}                TAGS_EDIT
${STATUS_VALUE}              Archived
${SEASON_VALUE}              SS19
${COLOR_VALUE}               Black
${SIZE_CHECKING_VALUE}       Different Model

${PRODUCT_STATUS_DROP_DOWN_VALUE}     xpath=//*[text()='${STATUS_VALUE}']//parent::li
${SEASON_DROP_DOWN_VALUE}             xpath=//div[text()='${SEASON_VALUE}']
${COLOR_DROP_DOWN_VALUE}              xpath=//div[text()='${COLOR_VALUE}']
${SIZE_CHECKING_DROP_DOWN_VALUE}      xpath=//div[text()='${SIZE_CHECKING_VALUE}']