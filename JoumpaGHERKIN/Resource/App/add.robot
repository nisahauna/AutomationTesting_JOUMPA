*** Settings ***
Library     Selenium2Library
Resource    ../PO/add.robot

*** Keywords ***
user enter page promo
    Click Promo Button

user click promo button
    Click Add Promo Button

user input new promo
    [Arguments]    ${promo_name}   ${promo_code}    ${promo_value}    ${start_date}    ${end_date}    ${description}    ${file}
    Input Promo Name    ${promo_name}
    Click Promo Type
    Input Promo Code    ${promo_code}
    Click Promo Value
    Input Promo Value    ${promo_value}
    Input Date           ${start_date}    ${end_date}
    Click Airport
    Click Product
    Input Description    ${description}
    Upload Banner        ${file}
    Click Save Button
    
user verify add promo
    Verify Add Promo Success
