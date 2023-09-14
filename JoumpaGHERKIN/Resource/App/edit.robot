*** Settings ***
Library     Selenium2Library
Resource    ../PO/edit.robot
Resource    ../PO/add.robot

*** Keywords ***
user click edit button
    Click More Button
    Click Detail Button
    Click Edit Button

user edit promo
    [Arguments]    ${edit_promo_name}   ${edit_promo_code}    ${edit_promo_value}    ${edit_start_date}    ${edit_end_date}
    Edit Promo Name    ${edit_promo_name}
    Edit Promo Code    ${edit_promo_code}
    Edit Promo Value    ${edit_promo_value}
    Edit Period Date    ${edit_start_date}    ${edit_end_date}

user click button Save
    Click Button Save

user verify edit promo
    Verify Edit Promo Success