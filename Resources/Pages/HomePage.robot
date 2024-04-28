*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME}    xpath=//h3[@class='mb-4 ml-4 text-sm font-semibold text-bodydark2']


*** Keywords ***
Page should have text 
    [Arguments]    ${menu}
    Wait Until Element Is Visible    ${HOME}
    Element Text Should Be    ${HOME}    ${menu}