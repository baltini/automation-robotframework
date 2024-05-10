*** Settings ***
Library          SeleniumLibrary
Resource         ../Resources/Variable/Variable.robot

*** Variables ***
${LOGIN_PAGE_TITLE}    Baltini ERP
${USERNAME_FIELD}      xpath=//input[@placeholder='Enter your email']
${PASSWORD_FIELD}      xpath=//input[@type='password']
${LOGIN_BUTTON}        xpath=//span[text()='Sign In']
