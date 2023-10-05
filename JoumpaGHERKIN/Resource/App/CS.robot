*** Settings ***
Library     Selenium2Library
Resource    ../PO/CS.robot

*** Keywords ***
user enter page booking
    Enter page regular booking
    Click button add new booking

user fill flight form
    [Arguments]    ${airplane_number}    ${date}    ${time}
    Click checkbox cross selling
    Click Arrival Button
    Input Flight Information    ${airplane_number}    ${date}    ${time}
    Pick Product Type
    Click First Next Button

user fill passenger form
    [Arguments]    ${first_name}    ${first_email}    ${first_phone}    ${second_name}    ${second_email}    ${second_phone}
    Input Paging Information
    Click Add Passenger Button
    Input Passenger Information    ${first_name}    ${first_email}    ${first_phone}
    Click Another Add Passenger Button
    Input Second Passenger Information    ${second_name}    ${second_email}    ${second_phone}
    Input Booker Information
    Click Second Next Button

user fill additional service form
    Input Field Lounge
    Input Field Transport
    Click Third Next Button

user input promo cross selling
    Input Promo

user confirm cross selling booking
    Save Cross Selling Booking
    Verify Cross Selling