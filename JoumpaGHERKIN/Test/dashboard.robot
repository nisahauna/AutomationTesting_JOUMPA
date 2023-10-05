*** Settings ***
Library     Selenium2Library
Library     OperatingSystem
Resource    ../Variable/login_var.robot
Resource    ../Resource/App/login.robot
Resource    ../Resource/App/dashboard.robot


*** Test Cases ***
Login with valid credentials
    [Tags]    positive_login
    Given user open browser    ${url}    ${browser}    ${delay}
    When user fill the fields    ${email}    ${password}
    And user click login button
    Then user verify login success    ${role}

Export Daily Report Table
    [Tags]    daily_report
    Given user enter dashboard table page
    Then user download daily report