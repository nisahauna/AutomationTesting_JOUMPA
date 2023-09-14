*** Settings ***
Library     Selenium2Library
Resource    ../PO/manageBooking.robot

*** Keywords ***
user fill find booking form
    [Arguments]    ${bookingId}    ${email}
    Input Manage Booking Data    ${bookingId}    ${email}
    Click Find Booking Button    ${bookingId}

user edit passenger name
    [Arguments]    ${editName}
    Click Edit Passenger Name    ${editName}
    Verify Edit Passenger Name Success