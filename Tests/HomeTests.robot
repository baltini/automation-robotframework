*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot

*** Test Cases ***
Check Menu on Page
    Login To ERP    admin1@gmail.com    secret123
    # Add verification steps here
    Close Browser