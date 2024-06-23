*** Settings ***
Library    SeleniumLibrary
Resource   ../Variables/variable.robot 

*** Variables ***
${ARROW_BUTTON}        xpath=//button[contains(@class,'absolute')]
${PRODUCT_SYMBOL}      xpath=//a[@href='/product/product-management' and contains(@class,'group')]
${MENU}                xpath=//*[text()='MENU']
${IMAGE_LOGO}          xpath=//img[@alt='Logo']
${PRODUCT}             xpath=//*[@id="root"]/div/div/aside/div[2]/nav/div/div/ul/li[1]/div[1]/a
${ORDERS}              xpath=//div[text()='Orders']
${USER_MANAGEMENT}     xpath=//div[text()='User Management']
${ACTIVITY_LOG}        xpath=//div[text()='Activity Log']
${USER_LOGIN}          xpath=//*[text()='${USER}']
${LOGOUT}              xpath=//*[text()='Log Out']
${ACCOUNT_SETTINGS}    xpath=//*[text()='Account Settings']