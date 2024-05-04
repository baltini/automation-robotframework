*** Settings ***
Resource    ../Pages/HomePage.robot

*** Keywords ***
Home page should have
    [Arguments]    ${menu}
    Page should have text    ${menu}

Page should have text 
    [Arguments]    ${menu}
    Wait Until Element Is Visible    ${HOME}
    Element Text Should Be    ${HOME}    ${menu}