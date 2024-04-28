*** Settings ***
Resource    ../Pages/ProductManagementPage.robot
Resource    ../Pages/ProductManagementEditPage.robot
Library    Screenshot

*** Variables ***
${PRODUCT_MANAGEMENT_LINK}     xpath=//a[@class='group relative flex items-center gap-2.5 rounded-md px-4 font-medium text-bodydark2 duration-300 ease-in-out text-primary active']
${FIRST_DATA_TABLE_LOCATOR}    xpath=//a[contains(@class,'font-medium text-p')]

*** Keywords ***
Open Product Management Page
    Click a Element          ${PRODUCT_MANAGEMENT_LINK}
    Page should have text    Product Management
    
Validate every Filter Label on page
    Page should have text    Search
    Page should have text    Status
    Page should have text    Size Checking Status
    Page should have text    Size Checking Issues
    Page should have text    Retailer
    Page should have text    Vendor
    Page should have text    Product ID
    Page should have text    Category
    Page should have text    Show Multiple Retailers

Validate Search result should contain
    [Arguments]    ${productNameResult}
    Product Name in n row should contain   1    ${productNameResult}

Search Product By Product Name
    [Arguments]    ${productName}
    Enter Search by Product Name with Delay    ${productName}

Select a Product from Table
    Click a Element    ${FIRST_DATA_TABLE_LOCATOR} 

Validate Edit Product Page
    Page should have text    Edit Product
    Page should have text    Product Information
    Page should have text    Product Name
    Page should have text    Product Status
    Page should have text    Description
    Page should have text    Material
    Page should have text    Origin
    Page should have text    Product ID
    Page should have text    Media
    Page should have text    Product Variants
    Page should have text    Product Organization
    Page should have text    Category
    Page should have text    Product Type / Sub Category
    Page should have text    Tags
    Page should have text    Season
    Page should have text    Color
    Page should have text    Size Checking Issues
    Page should have text    Size Checking Status
    Page should have text    Product Merging Status

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
    Sleep    3
    Take Screenshot
