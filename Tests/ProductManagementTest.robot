*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot
Resource          ../Resources/Keywords/ProductManagementKeywords.robot
Resource          ../Resources/Keywords/APIKeywords.robot

*** Test Cases ***
Navigate to Product Management Page
    Login To ERP    admin1@gmail.com    secret123
    Open Product Management Page
    Validate every Filter Label on page
    Close Browser

Search By Product Name
    Login To ERP    admin1@gmail.com    secret123
    Open Product Management Page
    Search Product By Product Name    Coperni Mini Swipe Handbag
    Validate Search result should contain  Coperni Mini Swipe Handbag
    Close Browser

Validate Edit Product Page
    Login To ERP    admin1@gmail.com    secret123
    Open Product Management Page
    Select a Product from Table
    Validate Edit Product Page
    Close Browser

Edit Product Detail
    Login To ERP    admin1@gmail.com    secret123
    Open Product Management Page
    Search Product By Product Name    Coperni Mini Swipe Handbag
    Select a Product from Table
    Validate Edit Product Page
    Perform edit product detail
    
    # Set Product Detail data back to original
    Close Browser
    
