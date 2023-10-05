*** Settings ***
Library     Selenium2Library
Library    OperatingSystem
Resource    ../Variable/login_var.robot
Resource    ../Variable/prodCorp_var.robot
Resource    ../Resource/App/login.robot
Resource    ../Resource/App/prodCorp.robot

*** Test Cases ***
Login with valid credentials
    [Tags]    positive_login
    Given user open browser    ${url}    ${browser}    ${delay}
    When user fill the fields    ${email}    ${password}
    And user click login button
    Then user verify login success    ${role}

Set Price Product Corporate
    [Tags]    set_price
    Given user enter page product corporate
    When user set corporate name and Type
    And user set product price    ${start_date}    ${end_date}
    And user save corporate price
    Then user verify add corporate price

View Detail Product Corporate
    [Tags]    detail_corp
    Given user enter page product corporate
    When user search corporate name
    And user view detail corporate
    Then user verify detail corporate

Edit Price Product Corporate
    [Tags]    edit_price
    Given user enter page product corporate
    When user search corporate name
    And user click edit button
    And user edit product corporate
    And user save edit product corporate
    Then user verify edit product corporate

Delete Product Corporate
    [Tags]    delete_corp
    Given user enter page product corporate
    When user search corporate name
    And user delete product corporate
    Then user verify delete product corporate