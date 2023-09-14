*** Settings ***
Library     Selenium2Library
Library    OperatingSystem
Resource    ../Variable/login_var.robot
Resource    ../Variable/addCorp_var.robot
Resource    ../Resource/App/login.robot
Resource    ../Resource/App/addCorp.robot

*** Test Cases ***
Login with valid credentials
    [Tags]    positive_login
    Given user open browser    ${url}    ${browser}    ${delay}
    When user fill the fields    ${email}    ${password}
    And user click login button
    Then user verify login success    ${role}

Add Corporate
    [Tags]    positive_add_corp
    Given user enter page master corporate
    When user fill add corporate field    ${id_corp}    ${name_corp}    ${min_pax}    ${max_pax}
    Then user verify add corporate success