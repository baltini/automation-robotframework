*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String

*** Variables ***

${SEARCH_FIELD}    xpath=//input[@placeholder='Search by Product Name']
${STATUS_FIELD}    xpath=//body/div[@id='root']/div[@class='dark:bg-boxdark-2 dark:text-bodydark']/div[@class='flex h-screen overflow-hidden']/div[@class='relative flex flex-1 flex-col overflow-y-auto overflow-x-hidden']/main/div[@class='mx-auto max-w-screen-4xl p-4 md:p-6 2xl:p-10']/div[@class='rounded-sm border border-stroke dark:border-none p-4 shadow-default bg-white dark:bg-boxdark md:p-6 xl:p-9']/div[@class='grid grid-cols-4 gap-4 mt-4']/div[1]/div[1]/div[1]/button[1]/div[1]
${PRODUCT_IMAGE}   xpath=//img[contains(@class,'object-cover cursor-pointer rounded-lg')]

*** Keywords ***

Click a Element
    [Arguments]    ${linkLocator}
    Wait Until Element Is Visible    ${linkLocator}
    Click Element    ${linkLocator}
    ...    
Page should have text 
    [Arguments]    ${text}
    Wait Until Page Contains    ${text} 
    Page Should Contain    ${text}

Enter Search by Product Name with Delay
    [Arguments]    ${productName}
    Wait Until Element Is Visible    ${SEARCH_FIELD}
    ${chunked_text}=    Split String To Characters    ${productName}
    FOR    ${char}    IN    @{chunked_text}
        Press Keys    ${SEARCH_FIELD}    ${char}
        Sleep    0.1
    END
    Press Keys    ${SEARCH_FIELD}    ENTER
    Wait Until Element Is Visible    ${PRODUCT_IMAGE}

Product Name in n row should contain
    [Arguments]    ${n}    ${data}
    ${result}=    Get Text    xpath=//tbody/tr[${n}]/td[1]/div  
    ${resultToLower}=    Convert To Lower Case    ${result}  
    Should Contain    ${resultToLower}    ${data}