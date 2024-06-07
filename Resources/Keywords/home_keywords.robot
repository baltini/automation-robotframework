*** Settings ***
Resource    ../Pages/home_page.robot

*** Keywords ***
Validate Home Page Elements
    Wait Until Element Is Visible    ${MENU} 
    Wait Until Element Is Visible    ${IMAGE_LOGO} 
    Wait Until Element Is Visible    ${PRODUCT_MANAGEMENT} 
    Wait Until Element Is Visible    ${MERGE_SUGGESTION} 
    Wait Until Element Is Visible    ${ORDERS}  
    Wait Until Element Is Visible    ${USER_MANAGEMENT}
    Wait Until Element Is Visible    ${ACTIVITY_LOG}
    Wait Until Element Is Visible    ${USER_LOGIN}

Perfoming Logout
    Wait Until Element Is Visible    ${USER_LOGIN}
    Click Element    ${USER_LOGIN}
    Wait Until Element Is Visible    ${LOGOUT} 
    Click Element    ${LOGOUT} 

Naviate to Account Settings
    Wait Until Element Is Visible    ${USER_LOGIN}
    Click Element    ${USER_LOGIN}
    Wait Until Element Is Visible    ${ACCOUNT_SETTINGS}
    Click Element    ${ACCOUNT_SETTINGS}


    


