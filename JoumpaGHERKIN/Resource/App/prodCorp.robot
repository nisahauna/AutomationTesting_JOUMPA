*** Settings ***
Library     Selenium2Library
Resource    ../PO/prodCorp.robot
Resource    customer.robot

*** Keywords ***
user enter page product corporate
    Click Product Button

user set corporate name and Type
    Click Set Price Button
    Select Corporate Name
    Select Cooperation Type

user set product price
    [Arguments]    ${start_date}    ${end_date}
    Enter Period Date    ${start_date}    ${end_date}
    Click Check Box MnG Domestic
    Input Field Airport
    Input Field Activities
    Input Concession
    Input PPN
    Input Price
    Click Save Price Button

user save corporate price
    Click Second Save Button

user verify add corporate price
    Verifiy Set Price Success
    
user search corporate name
    Enter Keyword Search

user view detail corporate
    Click Detail Corporate Button

user verify detail corporate
    Verify Detail Price Corporation

user click edit button
    Click Edit Corporate Button
    Click Detail Price Product

user edit product corporate
    Edit Field Airport
    Edit Price

user save edit product corporate
    Click Edit Save Button
    Click Second Edit Save Button

user verify edit product corporate
    Verify Edit Corporate Price Success

user delete product corporate
    Click Delete Corporate Button
    Click Confirm Delete Button

user verify delete product corporate
    Verify Delete Corporate Price Success