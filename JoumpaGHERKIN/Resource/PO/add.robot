*** Settings ***
Library     Selenium2Library
Library    XML

*** Keywords ***
Click Promo Button
    Click Element    xpath://*[@id="root"]/div[2]/div[1]/div/div[4]/a[8]/div/div
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/div[1]/div[2]
    Element Text Should Be    xpath:/html/body/div[1]/div[2]/div[3]/div[1]/div[1]/div    Promo Management

Click Add Promo Button
    Wait Until Element Is Visible     xpath://*[@id="root"]/div[2]/div[3]/div[1]/div[2]/div/button[2]
    Click Button    xpath://*[@id="root"]/div[2]/div[3]/div[1]/div[2]/div/button[2]

Input Promo Name
    [Arguments]    ${promo_name}
    Input Text    name:name    ${promo_name}

Click Promo Type
    Click Element    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[2]/div[1]/div/div[1]/div[2]
    Click Element    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[2]/div[1]/div[2]/div/div[2]

Input Promo Code
    [Arguments]    ${promo_code}
    Input Text    name:code    ${promo_code}

Click Promo Value
    Click Element
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[4]/div[2]/div/div[1]/div/div[1]/div[2]
    Click Element
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[4]/div[2]/div/div[1]/div[2]/div/div[1]

Input Promo Value
    [Arguments]    ${promo_value}
    Input Text    name:discount_percent    ${promo_value}

Input Date
    [Arguments]    ${start_date}    ${end_date}
    Input Text    name:period_start    ${start_date}
    Input Text    name:period_end    ${end_date}

Click Airport
    Click Element    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[6]/div/div[1]
    Click Element    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[6]/div[1]/div[2]/div/div[5]

Click Product
    Click Element    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[7]/div/div[1]
    Click Element    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[7]/div/div[2]/div/div[1]

Input Description
    [Arguments]    ${description}
    Input Text    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[8]/textarea    ${description}

Upload Banner
    [Arguments]    ${file}
    Choose File    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/input    ${file}

Click Save Button
    Click Button    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[2]/div/div/div/button[2]

Verify Add Promo Success
    # Wait until element is visible    //div[contains(@class, 'Toastify__toast-body')]
    # ${message}=    Get text    //div[contains(@class, 'Toastify__toast-body')]
    # Should be equal    ${message}    Add Promo Successful
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Add Promo Successful