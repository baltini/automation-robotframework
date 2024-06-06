*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/login_keywords.robot
Resource          ../Resources/Keywords/db_keywords.robot
Resource          ../Resources/Keywords/merge_suggestion_keywords.robot
Resource          ../Resources/Variables/variable.robot

*** Test Cases ***
Navigate to Merge Suggestion Page
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Open Merge Suggestion Page
    Close Browser

Filter Merge Suggestion by ProductId
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Open Merge Suggestion Page
    Search Merge Suggestion by Date Range
    Search Merge Suggestion by Product ID    ${MERGE_SUGGESTION_ID}
    Search result should contains    ${MERGE_SUGGESTION_ID}
    Close Browser

Merge first and second Product Suggestion 
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Open Merge Suggestion Page
    Search Merge Suggestion by Date Range
    Select first product
    Merge first and second Product Suggestion
    Close Browser

    