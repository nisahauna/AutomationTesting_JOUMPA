*** Settings ***
Library     Selenium2Library
Resource    ../PO/delete.robot

*** Keywords ***
user delete promo
    Click others button
    Click delete button

user verify delete promo success
    Verifiy delete success

