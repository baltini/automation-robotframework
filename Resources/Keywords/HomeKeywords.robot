*** Settings ***
Resource    ../Pages/HomePage.robot

*** Keywords ***
Home page should have
    [Arguments]    ${menu}
    Page should have text    ${menu}