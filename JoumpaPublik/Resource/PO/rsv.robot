*** Settings ***
Library     Selenium2Library
Library    XML

*** Keywords ***
Click Book Button
    Element Text Should Be    xpath:/html/body/div[1]/div[3]/div/div[1]/div[2]/div[1]/div/div/div[1]    Make Reservation Now!
    Click Button    xpath:/html/body/div[1]/div[3]/div/div[1]/div[2]/div[2]/div[2]/div[2]/div/button
    Sleep    1
    Element Text Should Be    xpath:/html/body/div[1]/div[3]/div/div/div[1]/div[1]    New Reservation

Click Arrival Button
     Click Element    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div/div[1]/div

Input Flight Information
    [Arguments]    ${airplane_number}    ${date}    ${time}
    Click Element    # Field origin
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[2]/div[2]/div[1]/div[2]/div/div[1]/div/div[1]/div[2]
    Click Element    # List origin
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[2]/div[2]/div[1]/div[2]/div/div[1]/div[2]/div/div[3]
    Click Element    # Field destination
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/div[2]
    Click Element    # List destination
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[2]/div[2]/div[2]/div[2]/div/div[1]/div[2]/div/div[4]
    Click Element    # Field Airline
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[2]/div[3]/div/div[1]/div/div[1]/div/div[1]/div[2]
    Click Element    # List Airline
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[2]/div[3]/div/div[1]/div/div[1]/div[2]/div/div[1]
    Input Text       # Field Airplane Number
    ...    name:airplane_number    ${airplane_number}
    Input Text    # Field Date
    ...    name:date    ${date}
    Input Text    # Field Time
    ...    name:time    ${time}

Pick Product Type
    Click Element    # Modal Product Type
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[3]/div[2]/div[1]/div/div

Click First Next Button
    Click Button    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[4]/div/div/div/button[2]
    Sleep    2
    Element Should Contain    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[1]    Passenger Information

Click Add Passenger Button
    Click Element    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div/div[2]
    Sleep    2

Input Passenger Information
    [Arguments]    ${first_name}    ${first_email}    ${first_phone}
    Click Element    # Field Title
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[1]/div[1]/div/div[1]/div[2]
    Click Element    # List Title
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[1]/div[1]/div[2]/div/div[3]
    Input Text       # Field First Passenger Name
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[2]/div/input    ${first_name}
    Click Element    # Field Nationality
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[3]/div[1]/div/div[1]/div[2]
    Click Element    # List Nationality
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[3]/div[1]/div[2]/div/div[102]
    Input Text       # Text First Email
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[4]/div/input    ${first_email}
    Input Text       # Text First Phone
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[5]/div[2]/div/input    ${first_phone}
    Click Element    #  Save Button
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[2]/div/div/div/button[2]
    Input Text       #  Passenger Notes
    ...    name:passenger_notes    Automate add reservation

Input Booker Information
    Click Element    # Checkbox Booker
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[3]/div[2]/div[1]/label/span

Click Second Next Button
    Click Button    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[4]/div/div/div/button[2]
    Sleep    1
    Element Should Contain    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[1]    Order Extras  

Input Field Lounge
    Click Element    # Card Lounge
    ...    xpath:/html/body/div/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[1]/div/div[2]/span
    Click Element    # Field Lounge
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div/div[1]/div[2]
    Click Element    # List Lounge
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div/div
    Press Keys        # Pax adult
    ...    name:lounge_adult_number    CTRL+A+DELETE
    Input Text    
    ...    name:lounge_adult_number    1

Input Field Transport
    Click Element    # Card Transport
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[2]/div/div[2]/span
    Click Element    # Field Region
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]/div/div[1]/div[2]
    Click Element    # List Region
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]/div[2]/div/div[2]
    Click Element    # Field Transport Type
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[2]/div[2]/div[2]/div[1]/div/div[1]/div[2]
    Click Element    # List transport type
    ...    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[2]/div[2]/div[2]/div[1]/div[2]/div/div
    Click Element    # Total unit transport
    ...    name:total_unit
    Input Text    
    ...    name:total_unit    1

Click Third Next Button
    Click Button    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[2]/div/div/div/button[2]
    Sleep    2
    Element Should Contain    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[1]    Booking Resume

Click Check out Button
    Click Button    xpath:/html/body/div[1]/div[3]/div/div/div[2]/div/form/div[2]/div/div[4]/div/div/div/button[2]
    Sleep    1

Verify Booking Web Public Success
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Reservation Successful! Please check your email and proceed the payment.