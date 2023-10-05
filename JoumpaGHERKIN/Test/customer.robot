*** Settings ***
Library     Selenium2Library
Library     OperatingSystem
Resource    ../Variable/login_var.robot
Resource    ../Resource/App/login.robot
Resource    ../Resource/App/customer.robot


*** Test Cases ***
Login with valid credentials
    [Tags]    positive_login
    Given user open browser    ${url}    ${browser}    ${delay}
    When user fill the fields    ${email}    ${password}
    And user click login button
    Then user verify login success    ${role}

Search Customer Name
    [Tags]    search_customer
    Given user enter page user customer
    When user search customer name
    Then user verify search result

View Customer Detail
    [Tags]    view_customer
    Given user view detail customer
    Then user verify customer detail