*** Settings ***
Library     DatabaseLibrary

*** Variables ***
${DB_DRIVER}      pymysql
${DB_NAME}        erp_staging
${DB_USER}        baltini_remote
${DB_PASSWORD}    pBuerYVNMB8FT
${DB_HOST}        104.237.1.165
${DB_PORT}        3306

*** Keywords ***
Connect To Database And Fetch Data
    Connect To Database    ${DB_DRIVER}    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}
    ${results}=    Query    select * from products order by created_at desc limit 10
    Log Many    ${results}
    Disconnect From Database