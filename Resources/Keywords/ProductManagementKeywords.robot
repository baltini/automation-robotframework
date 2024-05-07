*** Settings ***
Resource    ../Pages/ProductManagementPage.robot
Resource    ../Pages/ProductManagementEditPage.robot
Library    SeleniumLibrary
Library    String

*** Keywords *** 
Enter Search by Product Name with Delay
    [Arguments]    ${productName}
    Wait Until Element Is Visible    ${SEARCH_FIELD}
    ${chunked_text}=    Split String To Characters    ${productName}
    FOR    ${char}    IN    @{chunked_text}
        Press Keys    ${SEARCH_FIELD}    ${char}
    END
    Press Keys    ${SEARCH_FIELD}    ENTER
    Wait Until Element Is Visible    ${PRODUCT_IMAGE}    15

Product Name in n row should contain
    [Arguments]    ${n}    ${data}
    ${result}=    Get Text    xpath=//tbody/tr[${n}]/td[1]/div  
    ${resultToLower}=    Convert To Lower Case    ${result}  
    ${dataToLower}=    Convert To Lower Case    ${data} 
    Should Contain    ${resultToLower}    ${dataToLower}

Open Product Management Page
    Wait Until Element Is Visible    ${PRODUCT_MANAGEMENT_LINK}
    Click Element                    ${PRODUCT_MANAGEMENT_LINK}
    Wait Until Page Contains         Product Management
    
Validate every Filter Label on page
    Wait Until Page Contains    Search
    Wait Until Page Contains    Status
    Wait Until Page Contains    Size Checking Status
    Wait Until Page Contains    Size Checking Issues
    Wait Until Page Contains    Retailer
    Wait Until Page Contains    Vendor
    Wait Until Page Contains    Product ID
    Wait Until Page Contains    Category
    Wait Until Page Contains    Show Multiple Retailers

Validate Search result should contain
    [Arguments]    ${productNameResult}
    Product Name in n row should contain   1    ${productNameResult}

Search Product By Product Name
    [Arguments]    ${productName}
    Enter Search by Product Name with Delay    ${productName}

Select a Product from Table
    Wait Until Element Is Visible    ${FIRST_DATA_TABLE_LOCATOR}
    Click Element                    ${FIRST_DATA_TABLE_LOCATOR} 

Validate Edit Product Page
    Wait Until Page Contains    Edit Product
    Wait Until Page Contains    Product Information
    Wait Until Page Contains    Product Name
    Wait Until Page Contains    Product Status
    Wait Until Page Contains    Description
    Wait Until Page Contains    Material
    Wait Until Page Contains    Origin
    Wait Until Page Contains    Product ID
    Wait Until Page Contains    Media
    Wait Until Page Contains    Product Variants
    Wait Until Page Contains    Product Organization
    Wait Until Page Contains    Category
    Wait Until Page Contains    Product Type / Sub Category
    Wait Until Page Contains    Tags
    Wait Until Page Contains    Season
    Wait Until Page Contains    Color
    Wait Until Page Contains    Size Checking Issues
    Wait Until Page Contains    Size Checking Status
    Wait Until Page Contains    Product Merging Status

Perform edit product detail
    Edit Product Name
    Edit Product Status
    Edit Product Description
    Edit Product Material
    Edit Product Origin
    Edit Product Product ID 
    Edit Product Category
    Edit Product Product Type / Sub Category
    Edit Product Tags
    Delete Product image
    Add Product image
    Edit Product Season
    Edit Product Color
    Edit Product Size Checking
    Edit Product Variants
    Verify all field has updated
    Click Save Update Button    

*** Keywords ***
Edit Product Name
    Sleep    2
    Input Text    ${PRODUCT_NAME_FIELD}    ${SPACE}${PRODUCT_NAME_VALUE}

Edit Product Status 
    Click Element    ${PRODUCT_STATUS_DROP_DOWN}
    Click Element    ${PRODUCT_STATUS_DROP_DOWN_VALUE}

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
    Enter text using Press Key Keyword    ${TAGS_FIELD}    ${TAGS_VALUE}

Enter text using Press Key Keyword
    [Arguments]    ${locator}    ${text}
    ${chunked_text}=    Split String To Characters    ${text}
    FOR    ${char}    IN    @{chunked_text}
        Press Keys    ${locator}    ${char}
    END
    Press Keys    ${locator}    ENTER

Edit Product Season 
    Scroll Element Into View    ${SIZE_CHECKING_DROP_DOWN}
    Click Element             ${SEASON_DROP_DOWN}
    Click Element             ${SEASON_DROP_DOWN_VALUE}

Edit Product Color 
    Scroll Element Into View   ${COLOR_DROP_DOWN}
    Click Element            ${COLOR_DROP_DOWN}
    Click Element            ${COLOR_DROP_DOWN_VALUE}

Edit Product Size Checking 
    Scroll Element Into View   ${SIZE_CHECKING_DROP_DOWN}
    Click Element            ${SIZE_CHECKING_DROP_DOWN}
Delete Product image
    Click Element            ${LAST_PRODUCT_IMAGE}
    Click Element            xpath=//*[text()='Remove']

Add Product image
    Scroll Element Into View    xpath=//*[text()='Product Variants']
    Click Element             ${ADD_IMAGE_BUTTON}
    Enter text using Press Key Keyword    ${IMAGE_FIELD_4}    ${PRODUCT_IMAGE_LINK}

Edit Product Variants
    Wait Until Element Is Visible    ${PRODUCT_VARIANT_1}
    Clear Element Text    ${PRODUCT_VARIANT_1}
    Input Text    ${PRODUCT_VARIANT_1}    ${SPACE}${PRODICT_VARIANT_TITLE}

Click Save Update Button
    Scroll Element Into View    ${SAVE_UPDATE_BUTTON}
    Wait Until Element Is Visible    ${SAVE_UPDATE_BUTTON}
    Click Element At Coordinates    ${SAVE_UPDATE_BUTTON}    10    10
    Click Element    ${SAVE_UPDATE_BUTTON}
    Wait Until Page Contains    Product has been updated!

Verify a Element value contains Text
    [Arguments]    ${text}
    Wait Until Element Is Visible    xpath=//*[contains(@value,'${text}')]

Verify a Element contains text
    [Arguments]    ${text}
    Wait Until Element Is Visible    xpath=//*[contains(text(),'${text}')]

Verify all field has updated
    Verify a Element value contains Text    ${PRODUCT_NAME_VALUE}
    Verify a Element contains text          ${PRODUCT_STATUS_VALUE}
    Verify a Element contains text          ${DESCRIPTION_VALUE}
    Verify a Element value contains Text    ${PRODUCT_IMAGE_LINK}  
    Verify a Element value contains Text    ${MATERIAL_VALUE}
    Verify a Element value contains Text    ${ORIGIN_VALUE}
    Verify a Element value contains Text    ${PRODUCT_ID_VALUE}
    Verify a Element value contains Text    ${PRODICT_VARIANT_TITLE}
    Verify a Element value contains Text    ${CATEGORY_VALUE}
    Verify a Element value contains Text    ${PRODUCT_TYPE_VALUE}
    Verify a Element contains text          ${TAGS_VALUE}
    Verify a Element contains text          ${SEASON_VALUE}
    Verify a Element contains text          ${COLOR_VALUE}
    Verify a Element contains text          ${SIZE_CHECKING_VALUE}