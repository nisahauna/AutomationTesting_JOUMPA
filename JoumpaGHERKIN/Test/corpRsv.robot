*** Settings ***
Library     Selenium2Library
Library     OperatingSystem
Resource    ../Variable/login_var.robot
Resource    ../Variable/corpRsv_var.robot
Resource    ../Resource/App/login.robot
Resource    ../Resource/App/corpRsv.robot


*** Test Cases ***
Login with valid credentials
    [Tags]    positive_login
    Given user open browser    ${url}    ${browser}    ${delay}
    When user fill the fields    ${email2}    ${password2}
    And user click login button
    Then user verify login success    ${role2}

Add New Corporate Reservation
   [Tags]    positive_corpRSV
   Given user enter page corporate reservation
   When user fill flight form    ${airplane_number}    ${date}    ${time}
   And user fill passenger form    ${first_name}    ${first_email}    ${first_phone}    ${second_name}    ${second_email}    ${second_phone}
   And user fill additional service form
   And user assign Assistant
   Then user confirm reservation

# View Detail Corporate Reservation
#    [Tags]    positive_detailCorpRsv
#    Given user enter page detail reservation

# Cancel Corporate Reservation
#     [Tags]    positive_cancelcorprsv
#     Given user cancel reservation
