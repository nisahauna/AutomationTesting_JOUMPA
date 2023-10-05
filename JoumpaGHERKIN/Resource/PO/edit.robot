*** Settings ***
Library     Selenium2Library
Library    XML

*** Keywords ***
Click More Button
    Click Element    xpath:/html/body/div/div[2]/div[3]/div[2]/div/div/div[1]/table/tbody/tr[1]/td[9]/div/button

Click Detail Button
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[1]

Click Edit Button
    Click Button    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[2]/div/div/div/button[2]

Edit Promo Name
    [Arguments]    ${edit_promo_name}
    Press Keys    name:name     CTRL+A+DELETE
    Input Text    name:name    ${edit_promo_name}

Edit Promo Code
    [Arguments]    ${edit_promo_code}
    Press Keys    name:code     CTRL+A+DELETE
    Input Text    name:code    ${edit_promo_code}

Edit Promo Value
    [Arguments]    ${edit_promo_value}
    Press Keys    name:discount_percent      CTRL+A+DELETE
    Input Text    name:discount_percent    ${edit_promo_value}

Edit Period Date
    [Arguments]    ${edit_start_date}    ${edit_end_date}
    Input Text    name:period_start    ${edit_start_date}
    Input Text    name:period_end    ${edit_end_date}

Click Button Save
     Click Button    xpath:/html/body/div[3]/div/div[1]/div/div/form/div[2]/div/div/div/button[2]

Verify Edit Promo Success
    Wait until element is visible    //div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     //div[contains(@class, 'Toastify__toast-body')]    Change Promo Successful