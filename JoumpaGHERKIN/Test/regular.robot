*** Settings ***
Library     Selenium2Library
Library     OperatingSystem
Resource    ../Variable/reg_var.robot
Resource    ../Variable/login_var.robot
Resource    ../Resource/App/login.robot
Resource    ../Resource/App/bookingReg.robot


*** Test Cases ***
Login with valid credentials
    [Tags]    positive_login
    Given user open browser    ${url}    ${browser}    ${delay}
    When user fill the fields    ${email2}    ${password2}
    And user click login button
    Then user verify login success    ${role2}

Add New Regular Booking
   [Tags]    positive_regular
   Given user enter page booking
   When user fill flight form    ${airplane_number}    ${date}    ${time}    ${dateTransfer}    ${timeTransfer}
   And user fill passenger form    ${first_name}    ${first_email}    ${first_phone}    ${second_name}    ${second_email}    ${second_phone}
   And user fill additional service form
   And user input payment method    ${payment}
   Then user confirm regular booking