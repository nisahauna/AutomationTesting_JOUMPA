*** Settings ***
Library     Selenium2Library
Library    OperatingSystem
Resource    ../Variable/initialize_var.robot
Resource    ../Variable/resrv_var.robot
Resource    ../Resource/App/initialize.robot
Resource    ../Resource/App/rsv.robot

*** Test Cases ***
Visit page
    [Tags]    visit
    Given user open browser    ${url}    ${browser}    ${delay}

Add new reservation
     [Tags]    add_reservation
     Given user enter reservation page
     When user fill flight page    ${airplane_number}    ${date}    ${time}
     And user fill passenger page    ${first_name}    ${first_email}    ${first_phone}
     And user fill extra page
     Then user make payment
