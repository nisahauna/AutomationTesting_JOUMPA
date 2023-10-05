*** Settings ***
Library     Selenium2Library
Resource    ../PO/addCorp.robot

*** Keywords ***
user enter page master corporate
    Click Data Master Button
    Click Master Corporate Button
    Click Add Corporate Button

user fill add corporate field
    [Arguments]    ${id_corp}    ${name_corp}    ${min_pax}    ${max_pax}
    Input Corporate Type Group    ${id_corp}    ${name_corp}    ${min_pax}    ${max_pax}
    Input Corporate Type Package    ${min_pax}    ${max_pax}
    Input Corporate Type FIT

user verify add corporate success
    Click Save Button
    Verify Add Corporate Success