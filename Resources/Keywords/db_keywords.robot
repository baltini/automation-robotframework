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
Delete Product and it's Depedency From Database
    [Arguments]    ${productid}
    Connect To Database    ${DB_DRIVER}    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}
    ${sql_query_delete_products}=    Set Variable    delete from products where id = '${productid}'
    ${sql_query_delete_product_variants}=    Set Variable    delete from product_variants where product_id = '${productid}';
    ${sql_query_delete_product_images}=    Set Variable    delete from product_images where product_id = '${productid}';

    Execute Sql String    ${sql_query_delete_products}
    Execute Sql String    ${sql_query_delete_product_variants}
    Execute Sql String    ${sql_query_delete_product_images}
    # Optionally, verify deletion or commit changes if needed
    Disconnect From Database