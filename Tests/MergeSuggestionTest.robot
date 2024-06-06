*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot
Resource          ../Resources/Keywords/DBKeywords.robot
Resource          ../Resources/Keywords/MergeSuggestionKeywords.robot
Resource          ../Resources/Variable/Variable.robot

*** Test Cases ***
Navigate to Merge Suggestion Page
    Login To ERP    ${EMAIL}     ${PASSWORD}  
    Open Merge Suggestion Page

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
    