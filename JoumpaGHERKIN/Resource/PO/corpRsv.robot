*** Settings ***
Library     Selenium2Library

*** Keywords ***
## Add Corporate Reservation ##
Click Corp Reservation Button
    Click Element    xpath:/html/body/div[1]/div[2]/div[1]/div/div[4]/a[3]
    Click Element    xpath:/html/body/div[1]/div[2]/div[1]/div/div[4]/a[3]/div/div/span
    Element Text Should Be    xpath:/html/body/div[1]/div[2]/div[3]/div[1]/div[1]/div    Corporate Reservation

Click New Reservation Button
    Click Button    xpath:/html/body/div[1]/div[2]/div[3]/div[1]/div[2]/div/button[2]
    Wait Until Page Contains Element    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[1]/div[1]/div

Select Corporate
    Press Keys    # Field Corprate
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div/div[1]/div/div[1]    Nisa
    Click Element    # List Corporate
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div/div[1]/div[2]/div/div

Click Departure Button
     Click Element    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[2]/div[2]/div/div[2]

Input Flight Information
    [Arguments]    ${airplane_number}    ${date}    ${time}
    Click Element    # Field destination
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[3]/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/div[2]
    Click Element    # List destination
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[3]/div[2]/div[2]/div[2]/div/div[1]/div[2]/div/div[9]
    Click Element    # Field Airline
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[3]/div[3]/div/div[1]/div/div[1]/div/div[1]/div[2]
    Click Element    # List Airline
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[3]/div[3]/div/div[1]/div/div[1]/div[2]/div/div[1]
    Input Text       # Field Airplane Number
    ...    name:airplane_number    ${airplane_number}
    Input Text    # Field Date
    ...    name:date    ${date}
    Input Text    # Field Time
    ...    name:time    ${time}

Pick Product Type
    Click Element    # Modal Product Type
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[4]/div[2]/div/div/div

Click First Next Button
    Click Button    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[5]/div/div/div/button[2]
    Wait Until Element Contains    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[1]    Paging Information

Input Paging Information
    Input Text     # Field Paging Name
    ...    name:paging_name    Nisa automate corp rsv
    Click Element   # include joumpa logo
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/label/span

Click Add Passenger Button
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[2]/div/div[2]/div[1]
    Wait Until Page Contains    Passenger Data

Input Passenger Information
    [Arguments]    ${first_name}    ${first_email}    ${first_phone}
    Click Element    # Field Title
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[1]/div[1]/div/div[1]/div[2]
    Click Element    # List Title
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[1]/div[1]/div[2]/div/div[2]
    Input Text       # Field First Passenger Name
    ...    name:passenger_list[0].name    ${first_name}
    Click Element    # Field Nationality
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[3]/div[1]/div/div[1]/div[2]
    Click Element    # List Nationality
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[3]/div[1]/div[2]/div/div[102]
    Input Text       # Text First Email
    ...    name:passenger_list[0].email    ${first_email}
    Input Text       # Text First Phone
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[5]/div[2]/div/input   ${first_phone}
    Click Element    #  Save Button
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[2]/div/div/div/button[2]

Click Another Add Passenger Button
    Click Element    xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[2]/div/div[5]/div[1]
    Wait Until Page Contains    Passenger Data

Input Second Passenger Information
    [Arguments]    ${second_name}    ${second_email}    ${second_phone}
    Click Element    # Field Title
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[1]/div[1]/div/div[1]/div[2]
    Click Element    # List Title
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[1]/div[1]/div[2]/div/div[2]
    Input Text       # Field First Passenger Name
    ...    name:passenger_list[1].name    ${second_name}
    Click Element    # Field Nationality
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[3]/div[1]/div/div[1]/div[2]
    Click Element    # List Nationality
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[3]/div[1]/div[2]/div/div[102]
    Input Text       # Text First Email
    ...    name:passenger_list[1].email    ${second_email}
    Input Text       # Text First Phone
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[1]/div[5]/div[2]/div/input   ${second_phone}
    Click Element    #  Save Button
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[2]/div/div/div/button[2]
    Input Text       #  Passenger Notes
    ...    name:passenger_notes    Automate add corp reservation

Input Booker Information
    Click Element    # Checkbox Booker
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[4]/div[2]/div[2]/label

Click Second Next Button
    Click Button    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[5]/div/div/div/button[2]
    Wait Until Page Contains Element  xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]

Input Field Lounge
    Click Element    # Card Lounge
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[1]/div/div[2]/span
    Click Element    # Field Lounge
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div/div[1]/div[2]
    Click Element    # List Lounge
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div/div
    Press Keys        # Pax adult
    ...    name:lounge_adult_number    CTRL+A+DELETE
    Input Text    
    ...    name:lounge_adult_number    2

Input Field Transport
    Click Element    # Card Transport
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[2]/div/div[2]/span
    Click Element    # Field Car Type
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]/div/div[1]
    Click Element    # List Car Type
    ...    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[2]/div[2]/div[2]/div[1]/div[1]/div[2]/div/div[1]
    Input Text    
    ...    name:total_unit    1

Click Third Next Button
    Click Button    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[2]/div/div/div/button[2]
    Wait Until Page Contains Element    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[1]/div[1]

Assign Assistant
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[3]/div[2]/div
    Input Text    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div/div[2]/input    02
    Press Keys    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div/div[2]/input    ENTER
    Sleep    3
    Click Button    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div/div[3]/form/div[1]/div[2]/div/button
    Click Button    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div/div[3]/form/div[2]/div/div/div/button[2]
    Click button    xpath:/html/body/div[3]/div/div[1]/div/div/div[3]/div/div/div/button[2]

Save Reservation
    Click Element    xpath:html/body/div[1]/div[2]/div[3]/div/div/div[2]/div/form/div[2]/div/div[5]/div/div/div/button[2]

Verify Corp Reservation
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Add Corporate Reservation Data Successful


## Detail Corporate Reservation ##
Click Detail Corporate Reservation
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/div[1]/div[2]
    Wait Until Page Contains Element    xpath:/html/body/div[1]/div[2]/div[3]/div[1]/div[1]/div/span
    Click Element    xpath:/html/body/div/div[2]/div[3]/div[2]/div/div/div[1]/table/tbody/tr[1]/td[8]/div/button
    Click Element    xpath://*[@id="simple-menu"]/div[3]/ul/li[1]
    Wait Until Page Contains Element    xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div[1]/div[1]/div/span

## Cancel Corporate Reservation ##
Click Cancel Corporate Reservation
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/div[1]/div[2]
    Wait Until Page Contains Element    xpath:/html/body/div[1]/div[2]/div[3]/div[1]/div[1]/div/span
    Click Element    xpath:/html/body/div/div[2]/div[3]/div[2]/div/div/div[1]/table/tbody/tr[1]/td[8]/div/button
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[2]
    Input Text    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div[2]/div/textarea    automate cancel corp reservation
    Click Element    xpath:/html/body/div[2]/div/div[1]/div/div/div[3]/div/div/div/button[2]