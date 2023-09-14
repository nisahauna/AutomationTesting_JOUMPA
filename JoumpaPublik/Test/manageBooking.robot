*** Settings ***
Library     Selenium2Library
Library    OperatingSystem
Resource    ../Variable/initialize_var.robot
Resource    ../Variable/manage_var.robot
Resource    ../Resource/App/initialize.robot
Resource    ../Resource/App/manageBooking.robot

*** Test Cases ***
Visit page
    [Tags]    visit
    Given user open browser    ${url2}    ${browser}    ${delay}

Manage Booking With Valid Data
    [Tags]    manageBooking
    Given user fill find booking form    ${bookingId}    ${email}
    When user edit passenger name    ${editName}