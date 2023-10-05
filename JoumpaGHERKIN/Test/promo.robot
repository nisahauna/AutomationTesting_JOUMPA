*** Settings ***
Library     Selenium2Library
Library     OperatingSystem
Resource    ../Variable/login_var.robot
Resource    ../Variable/add_var.robot
Resource    ../Variable/edit_var.robot
Resource    ../Resource/App/login.robot
Resource    ../Resource/App/add.robot
Resource    ../Resource/App/delete.robot
Resource    ../Resource/App/edit.robot


*** Test Cases ***

Login with valid credentials
    [Tags]    positive_login
    Given user open browser    ${url}    ${browser}    ${delay}
    When user fill the fields    ${email}    ${password}
    And user click login button
    Then user verify login success    ${role}

# Login with invalid credentials
#     [Tags]    negative_login
#     Given user open browser    ${url}    ${browser}    ${delay}
#     When user fill the fields with invlid data    ${invalid_email}    ${invalid_password}
#     And user click login button
#     Then user verify login failed

Add new promo
   [Tags]    add_promo
   Given user enter page promo
   When user click promo button
   And user input new promo    ${promo_name}    ${promo_code}    ${promo_value}    ${start_date}    ${end_date}    ${description}    ${file}
   Then user verify add promo

# Delete promo
#    [Tags]    delete_promo
#    Given user enter page promo
#    When user delete promo
#    Then user verify delete promo success

# Edit promo
#    [Tags]    edit_promo
#    Given user enter page promo
#    When user click edit button
#    And user edit promo    ${edit_promo_name}    ${edit_promo_code}    ${edit_promo_value}    ${edit_start_date}    ${edit_end_date}
#    And user click button Save
#    Then user verify edit promo
