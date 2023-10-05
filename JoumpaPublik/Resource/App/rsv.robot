*** Settings ***
Library     Selenium2Library
Resource    ../PO/rsv.robot

*** Keywords ***
user enter reservation page
    Click Book Button

user fill flight page
    [Arguments]    ${airplane_number}    ${date}    ${time}
    Input Flight Information    ${airplane_number}    ${date}    ${time}
    Pick Product Type
    Click First Next Button

user fill passenger page
    [Arguments]    ${first_name}    ${first_email}    ${first_phone}
    Click Add Passenger Button
    Input Passenger Information    ${first_name}    ${first_email}    ${first_phone}
    Input Booker Information
    Click Second Next Button

user fill extra page
    Input Field Lounge
    Input Field Transport
    Click Third Next Button

user make payment
    Click Check out Button
    Verify Booking Web Public Success
