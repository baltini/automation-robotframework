*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot
Resource          ../Resources/Keywords/ProductManagementKeywords.robot
Resource          ../Resources/Keywords/APIKeywords.robot
Resource          ../Resources/Keywords/DBKeywords.robot
Resource          ../Resources/Variable/Variable.robot


*** Test Cases ***
Navigate to Product Management Page
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Open Product Management Page
    Validate every filter label on the page
    Close Browser

Search By Product Name
    ${productid}=     Create a Product Testing
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Open Product Management Page
    Search Product By Product Name    ${PRODUCT_NAME}
    Validate Search result should contain  ${PRODUCT_NAME}
    Delete Product and it's Depedency From Database     ${productid}
    Close Browser

Validate Edit Product Page
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Open Product Management Page
    Select a Product from Table
    Validate Edit Product Page
    Close Browser

Edit Product Detail
    ${productid}=     Create a Product Testing
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Open Product Management Page
    Search Product By Product Name    ${PRODUCT_NAME}
    Select a Product from Table
    Validate Edit Product Page
    Perform edit product detail
    Delete Product and it's Depedency From Database     ${productid}
    Close Browser