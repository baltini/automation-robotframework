*** Settings ***
Resource    ../Pages/MergeSuggestionPage.robot
Resource    ../Pages/ProductManagementPage.robot
Resource    ../Pages/ProductSuggestionPage.robot

Library     String
Library    SeleniumLibrary

*** Keywords ***
Open Merge Suggestion Page
    Wait Until Element Is Visible    ${MERGE_SUGGESTION_LINK}
    Click Element                    ${MERGE_SUGGESTION_LINK}
    Wait Until Element Is Visible    ${PAGE_TITLE}
    Page Should Contain Element      ${PAGE_TITLE}


Search Merge Suggestion by Product ID
    [Arguments]    ${productid}
    ${chunked_text}=    Split String To Characters    ${productid}
    FOR    ${char}    IN    @{chunked_text}
        Press Keys    ${SEARCH_TEXT}    ${char}
    END
    Press Keys    ${SEARCH_TEXT}    ENTER

Search result should contains
    [Arguments]    ${productid}
    Wait Until Element Is Visible    ${FIRST_PRODUCT_ID}
    Click Element                    ${FIRST_PRODUCT_ID}
    Wait Until Page Contains         ${productid}
    Page Should Contain              ${productid}

Merge first and secound Product Suggestion
    Wait Until Element Is Visible     ${ITEM_CHECKBOX_LIST}
    @{allLinks}    Get WebElements    ${ITEM_CHECKBOX_LIST}
    Click Element                     ${allLinks}[0]
    Click Element                     ${allLinks}[1]
    Click Element                     ${MERGE_BUTTON}
    Wait Until Element Is Visible     ${TITLE_BUTTON}
    Click Element                     ${TITLE_BUTTON}
    Wait Until Element Is Visible     ${TITLE_DROPDOWN_LIST}
    Click Element                     ${TITLE_DROPDOWN_LIST}