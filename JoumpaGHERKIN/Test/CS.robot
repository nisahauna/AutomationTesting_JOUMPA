*** Settings ***
Library     Selenium2Library
Library     OperatingSystem
Resource    ../Variable/login_var.robot
Resource    ../Variable/CS_var.robot
Resource    ../Resource/App/login.robot
Resource    ../Resource/App/CS.robot


*** Test Cases ***
Login with valid credentials
    [Tags]    positive_login
    Given user open browser    ${url}    ${browser}    ${delay}
    When user fill the fields    ${email2}    ${password2}
    And user click login button
    Then user verify login success    ${role2}

Add New Cross Selling Booking
   [Tags]    positive_CS
   Given user enter page booking
   When user fill flight form    ${airplane_number}    ${date}    ${time}
   And user fill passenger form    ${first_name}    ${first_email}    ${first_phone}    ${second_name}    ${second_email}    ${second_phone}
   And user fill additional service form
   And user input promo cross selling
   Then user confirm cross selling booking