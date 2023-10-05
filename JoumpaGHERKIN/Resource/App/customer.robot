*** Settings ***
Library     Selenium2Library
Resource    ../PO/customer.robot

*** Keywords ***
user enter page user customer
    Click User Button
    Click Customer Button

user search customer name
    Click Search Button
    Input Customer Name

user verify search result
    Verify customer name

user view detail customer
    Click detail button

user verify customer detail
    Verify customer detail
