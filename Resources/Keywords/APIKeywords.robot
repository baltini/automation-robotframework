*** Settings ***
Library           RequestsLibrary

*** Variables ***
${BASE_URL}                           https://erp-go-staging.baltini-gateway.com/api
${API_ENDPOINT}                       v1/products/00038d93-e998-4be8-92f9-e28d4f8efc48?
${API_LOGIN_ENDPOINT}                 v1/auth/login?
${BODY_LOGIN_CONTENT}                 {"email":"admin1@gmail.com","password":"secret123"}
${BODY_EDIT_PRODUCT_CONTENT}          {"brand_id":"3092857e-a02b-443d-92c2-c2a330ae7ce7","category":"Bags","checked_for_duplicates":false,"created_at":"2024-02-10T06:31:27Z","deleted_at":null,"description":"<p>Two-way zip top closure&nbsp;</p><p>Circular handle; Oval design&nbsp;</p><p>Silver logo on the front&nbsp;</p><p>Mirrored finish&nbsp;</p><p>Height 27.5 cm, Width 16 cm, Depth 6.5 cm&nbsp;</p><p><strong>Gender:</strong> WOMEN</p><p><strong>Material:</strong> 100% SKIN</p><p><strong>Color:</strong> SILVER</p><p><strong>Made in:</strong> IT</p><p><strong>Product ID:</strong> COPBA01BIS452SILVER</p><p><em>*Import tax/duty will be calculated at checkout (If applicable)</em></p>","external_color_code":"SILVER","external_id":"36dde5abd19d1cd03eedce8d284f189d","external_product_code":"COPBA01BIS452SILVER","gender":"Women","is_merged":true,"labels":[],"merged_at":"2024-03-29T09:17:51Z","merged_by":"17","merged_by_user_id":{"id":17,"name":"Ferderico"},"product_color_suggestion":null,"product_images":[{"id":"9badb620-8552-40a1-9ddb-ee203c4e5cd9","own_url":"http://sin1.contabostorage.com/e651546031964131b1e1df61063850e1:baltini-erp-image-prod/0c3817cd-89de-4da6-9a5c-b0cc6230d118.jpeg","position":1,"url":"http://sin1.contabostorage.com/e651546031964131b1e1df61063850e1:baltini-erp-image-prod/0c3817cd-89de-4da6-9a5c-b0cc6230d118.jpeg"},{"id":"9badb620-89f4-4d5a-bb00-79eaa8825ad7","own_url":"http://sin1.contabostorage.com/e651546031964131b1e1df61063850e1:baltini-erp-image-prod/323a692b-f2bd-4a8e-a4fc-6530ba362fe8.jpeg","position":2,"url":"http://sin1.contabostorage.com/e651546031964131b1e1df61063850e1:baltini-erp-image-prod/323a692b-f2bd-4a8e-a4fc-6530ba362fe8.jpeg"},{"id":"9badb620-8be1-47e3-bad8-f79a6afaa57c","own_url":"http://sin1.contabostorage.com/e651546031964131b1e1df61063850e1:baltini-erp-image-prod/0e1d8ee2-f19f-438b-bd1b-0602a6e68fc5.jpeg","position":3,"url":"http://sin1.contabostorage.com/e651546031964131b1e1df61063850e1:baltini-erp-image-prod/0e1d8ee2-f19f-438b-bd1b-0602a6e68fc5.jpeg"},{"id":"9badb620-8d21-4438-9aaf-827dd24ba172","own_url":"http://sin1.contabostorage.com/e651546031964131b1e1df61063850e1:baltini-erp-image-prod/50066f40-b765-40b1-86f9-35db8301dea5.jpeg","position":4,"url":"http://sin1.contabostorage.com/e651546031964131b1e1df61063850e1:baltini-erp-image-prod/50066f40-b765-40b1-86f9-35db8301dea5.jpeg"}],"product_type":"Women > Bags > Otherbags","product_variants":[{"barcode":"2008615078535","compare_at_price_usd":742,"cost_price_ccy":"EUR","cost_price_orig_ccy":298,"cost_price_usd":318.86,"created_at":"2024-02-10T06:31:27Z","deleted_at":null,"external_id":"36dde5abd19d1cd03eedce8d284f189d:::OS","id":"17e745b6-a58b-4064-bb64-7d487539dcff","market_price_orig_ccy":520,"market_price_usd":494,"position":1,"product_id":"001dbbe6-8e29-4c61-96e6-033ca5bed426","product_image_id":null,"quantity":3,"retailer":{"id":"d711ccc0-27b5-424a-bd55-fe750c353870","name":"LUXURY OF LOVE"},"retailer_id":"d711ccc0-27b5-424a-bd55-fe750c353870","shopify_variant_id":null,"size_checked_at":"2024-03-29T09:18:28Z","size_checked_by":"17","size_checked_by_user":{"id":17,"name":"Ferderico"},"size_checking_status":"done","sku":"2008615078535","supplier_id":"c594a0c8-affc-42e8-a62d-4e503c021cf1","title":"OS","updated_at":"2024-05-02T19:17:52Z","weight":5},{"barcode":"5057890693701","compare_at_price_usd":742,"cost_price_ccy":"EUR","cost_price_orig_ccy":298,"cost_price_usd":318.86,"created_at":"2024-03-29T16:17:52Z","deleted_at":null,"external_id":"91afd45cef1d15d4fcf658a597a1ccdc:::OS","id":"be6bb162-0eba-43da-9f56-74f9a9bdf0b0","market_price_orig_ccy":426.23,"market_price_usd":494,"position":2,"product_id":"001dbbe6-8e29-4c61-96e6-033ca5bed426","product_image_id":null,"quantity":1,"retailer":{"id":"92f71ccd-f786-43a4-a8eb-fbaabcfef291","name":"Gaudenzi"},"retailer_id":"92f71ccd-f786-43a4-a8eb-fbaabcfef291","shopify_variant_id":"45210755891459","size_checked_at":"2024-03-29T09:18:28Z","size_checked_by":"17","size_checked_by_user":{"id":17,"name":"Ferderico"},"size_checking_status":"done","sku":"COPBA01BIS452SILVER","supplier_id":"6b031154-04f4-42b7-8b4f-33a9be33bfcb","title":"OS","updated_at":"2024-05-02T19:18:24Z","weight":5}],"retailers":["LUXURY OF LOVE","Gaudenzi"],"season_id":"428aeef4-f3b4-4086-9f9b-e95869804b78","shopify_product_id":"8468633649411","size_checking_status":"done","status":"active","tags":"BAGS, BALTINI-ERP-EXTERNAL-ID: 36dde5abd19d1cd03eedce8d284f189d, BALTINI-ERP-ID: 001dbbe6-8e29-4c61-96e6-033ca5bed426, Color: SILVER, ERPcolor: Silver, feed-cl0-LUXURY OF LOVE, feed-color-silver, feed-gender-female, Gender: Women, Material: 100% SKIN, Origin: IT, OTHERBAGS, ProductID: COPBA01BIS452SILVER, Season: SS24, size-type-OS, SOURCE: Baltini-ERP, SS24, WOMEN, Category: Bags, SubCategory: Otherbags, ACategory: BAGS, ASubCategory: OTHERBAGS,  Supplier: LUXURY OF LOVE,  Supplier: Gaudenzi","title":"Coperni Mini Swipe Handbag","updated_at":"2024-05-03T02:31:44Z","deleted_product_image_ids":[],"deleted_product_variant_ids":[]}
${CONTENT_TYPE}   application/json

*** Keywords ***

Perform Login using API
    Create Session    login_session    ${BASE_URL}
    &{headers} =    Create Dictionary    Content-Type=${CONTENT_TYPE}
    ${response} =    POST On Session    login_session    ${API_LOGIN_ENDPOINT}    headers=${headers}    data=${BODY_LOGIN_CONTENT}
    Status Should Be    200    ${response}
    ${response_json}=    Evaluate    json.loads('''${response.content}''')    json
    ${token}=    Set Variable    ${response_json['data']['token']}
    [Return]    ${token}


Set Product Detail data back to original
    # Set headers including the authentication token
    ${ACCESS_TOKEN}=    Perform Login using API
    &{HEADERS}=    Create Dictionary    Content-Type=application/json    Authorization=Bearer ${ACCESS_TOKEN}

    # Define the raw body (JSON payload) to send with the PUT request
    ${BODY}=    Set Variable    ${BODY_EDIT_PRODUCT_CONTENT}

    # Concatenate the base URL and endpoint
    ${FULL_URL}=    Catenate    ${BASE_URL}    ${API_ENDPOINT}

    # Execute the PUT request
    Create Session    edit_product    ${BASE_URL}    headers=${HEADERS}
    ${response}=    PUT On Session    edit_product    ${API_ENDPOINT}    data=${BODY}

    # Log response details
    Log    ${response.status_code}
    Log    ${response.content}

    # Example of asserting the status code
    Should Be Equal As Strings    ${response.status_code}    200