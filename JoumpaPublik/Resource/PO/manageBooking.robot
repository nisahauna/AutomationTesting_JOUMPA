*** Settings ***
Library     Selenium2Library
Library    XML
Resource    rsv.robot

*** Keywords ***
Input Manage Booking Data
    [Arguments]    ${bookingId}    ${email}
    Input Text    name:bookingId    ${bookingId}
    Input Text    name:email    ${email}

Click Find Booking Button
    [Arguments]    ${bookingId}
    Click Button    xpath:/html/body/div[1]/div[3]/div/section/div[2]/div/div/div/div/div[3]/button
    Click Button    xpath:/html/body/div[1]/div[3]/div/section/div[2]/div/div[2]/div/div/div[2]/div[7]/button
    Element Should Contain    xpath:/html/body/div[1]/div[3]/div/section/div[2]/div/div[2]/div/div/div[2]/div[1]/div[2]    ${bookingId}

Click Edit Passenger Name
    [Arguments]    ${editName}
    Click element    xpath:/html/body/div[1]/div[3]/div/section/div[2]/div/div[2]/div/div/div[2]/div[3]/div[2]/p/div
    Input Text       name:passengerName    ${editName}
    Click Button     xpath:/html/body/div[1]/div[3]/div/section/div[2]/div/div[2]/div/div/div[2]/div[4]/div/div/button[2]
    Sleep    2
    Click Button     xpath:/html/body/div[2]/div/div[1]/div/div/div[3]/div/div/div/button[2]

Verify Edit Passenger Name Success
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Successfully Change Passenger Data