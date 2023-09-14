*** Settings ***
Library     Selenium2Library
Resource    ../PO/corpRsv.robot

*** Keywords ***
user enter page corporate reservation
    Click Corp Reservation Button
    Click New Reservation Button

user fill flight form
    [Arguments]    ${airplane_number}    ${date}    ${time}
    Select Corporate
    Click Departure Button
    Input Flight Information    ${airplane_number}    ${date}    ${time}
    Pick Product Type
    Click First Next Button

user fill passenger form
    [Arguments]    ${first_name}    ${first_email}    ${first_phone}
    Input Paging Information
    Click Add Passenger Button
    Input Passenger Information    ${first_name}    ${first_email}    ${first_phone}
    Input Booker Information
    Click Second Next Button

user fill additional service form
    Input Field Lounge
    Input Field Transport
    Click Third Next Button

user assign Assistant
    Assign Assistant

user confirm reservation
    Save Reservation
    Verify Corp Reservation

user enter page detail reservation
    Click Corp Reservation Button
    Click Detail Corporate Reservation

user cancel reservation
    Click Corp Reservation Button
    Click Cancel Corporate Reservation