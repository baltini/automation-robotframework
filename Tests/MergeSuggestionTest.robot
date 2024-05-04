*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot
Resource          ../Resources/Keywords/DBKeywords.robot
Resource          ../Resources/Keywords/MergeSuggestionKeywords.robot

*** Test Cases ***
Navigate to Merge Suggestion Page
    Login To ERP    admin1@gmail.com    secret123
    Open Merge Suggestion Page
    Connect To Database And Fetch Data

Filter Merge Suggestion by ProductId
    Login To ERP    admin1@gmail.com    secret123
    Open Merge Suggestion Page
    Search Merge Suggestion by Product ID    PWAA044S24JER0010310
    Search result should contains    PWAA044S24JER0010310
    Close Browser

Merge first and second Product Suggestion 
    Login To ERP    admin1@gmail.com    secret123
    Open Merge Suggestion Page
    Search Merge Suggestion by Product ID    3804013150
    Search result should contains    3804013150
    Merge first and secound Product Suggestion
    