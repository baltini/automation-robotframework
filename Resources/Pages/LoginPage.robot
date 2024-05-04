*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${LOGIN_PAGE_TITLE}    Baltini ERP
${USERNAME_FIELD}      xpath=//input[@placeholder='Enter your email']
${PASSWORD_FIELD}      xpath=//input[@type='password']
${LOGIN_PATH}          https://baltini-erp-web-staging-2vrwqmx2ba-as.a.run.app/login
${LOGIN_BUTTON}        xpath=//span[text()='Sign In']
${BROWSER}             chrome