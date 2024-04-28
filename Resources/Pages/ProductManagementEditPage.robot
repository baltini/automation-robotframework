*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
Resource    ProductManagementPage.robot

*** Variables ***
${PRODUCT_NAME_FIELD}    xpath=//input[@type='text'][1]
${DESCRIPTION_FIELD}     xpath=//div[@class='col-span-3']//p[3]
${MATERIAL_FIELD}        xpath=//label[text()='Material']//following-sibling::div//input
${ORIGIN_FIELD}          xpath=//label[text()='Origin']//following-sibling::div//input
${PRODUCT_ID_FIELD}      xpath=//label[text()='Product ID']//following-sibling::div//input
${CATEGORY_FIELD}        xpath=//label[text()='Category']//following-sibling::div//input
${PRODUCT_TYPE_FIELD}    xpath=//label[text()='Product Type / Sub Category']//following-sibling::div//input
${TAGS_FIELD}            xpath=//input[@placeholder='Type new tag and press enter']
${IMAGE_FIELD_1}         xpath=//table[@class='table-product-image']//input[1]
${IMAGE_FIELD_2}         xpath=//table[@class='table-product-image']//input[2]
${PRODUCT_VARIANT_1}     xpath=//table[@class='table-product-variant']//input[1]
${PRODUCT_VARIANT_1}     xpath=//table[@class='table-product-variant']//input[2]   

${PRODUCT_STATUS_DROP_DOWN}    xpath=//label[text()='Product Status']//following-sibling::div//button
${SEASON_DROP_DOWN}            xpath=//div[contains(@class,'col-span-3 xl:col-span-1')]//button[1]
${COLOR_DROP_DOWN}             xpath=//div[contains(@class,'col-span-3 xl:col-span-1')]//button[2]
${SIZE_CHECKING_DROP_DOWN}     xpath=//div[contains(@class,'col-span-3 xl:col-span-1')]//button[3]

${PRODUCT_NAME_VALUE}        PRODUCT_NAME_EDIT    
${PRODUCT_STATUS_VALUE}      PRODUCT_STATUS_EDIT 
${DESCRIPTION_VALUE}         DESCRIPTION_EDIT
${MATERIAL_VALUE}            MATERIAL_EDIT
${ORIGIN_VALUE}              ORIGIN_EDIT               
${PRODUCT_ID_VALUE}          PRODUCT_ID_EDIT
${CATEGORY_VALUE}            CATEGORY_EDIT
${PRODUCT_TYPE_VALUE}        PRODUCT_TYPE_EDIT
${TAGS_VALUE}                TAGS_EDIT

*** Keywords ***
Edit Product Name
    Sleep    2
    Input Text    ${PRODUCT_NAME_FIELD}    ${SPACE}${PRODUCT_NAME_VALUE}

Edit Product Status 
    Click a Element    ${PRODUCT_STATUS_DROP_DOWN}
    Click a Element    xpath=//*[text()='Archived']//parent::li

Edit Product Description 
    Input Text    ${DESCRIPTION_FIELD}    ${SPACE}${DESCRIPTION_VALUE}

Edit Product Material 
    Wait Until Element Is Visible    ${MATERIAL_FIELD}
    Input Text    ${MATERIAL_FIELD}    ${SPACE}${MATERIAL_VALUE}

Edit Product Origin 
    Wait Until Element Is Visible    ${ORIGIN_FIELD}
    Input Text    ${ORIGIN_FIELD}    ${SPACE}${ORIGIN_VALUE}

Edit Product Product ID 
    Wait Until Element Is Visible    ${PRODUCT_ID_FIELD}
    Input Text    ${PRODUCT_ID_FIELD}    ${SPACE}${PRODUCT_ID_VALUE}

Edit Product Category 
    Wait Until Element Is Visible    ${CATEGORY_FIELD}
    Input Text    ${CATEGORY_FIELD}    ${SPACE}${CATEGORY_VALUE}

Edit Product Product Type / Sub Category 
    Wait Until Element Is Visible    ${PRODUCT_TYPE_FIELD}
    Input Text    ${PRODUCT_TYPE_FIELD}    ${SPACE}${PRODUCT_TYPE_VALUE}

Edit Product Tags 
    Wait Until Element Is Visible    ${TAGS_FIELD}
    Input Text    ${TAGS_FIELD}    ${SPACE}${TAGS_VALUE}
