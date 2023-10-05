*** Settings ***
Library     Selenium2Library
Library     OperatingSystem
Resource    ../Variable/login_var.robot
Resource    ../Variable/RKAP_var.robot
Resource    ../Resource/App/login.robot
Resource    ../Resource/App/RKAP.robot


*** Test Cases ***
Login with valid credentials
    [Tags]    positive_login
    Given user open browser    ${url}    ${browser}    ${delay}
    When user fill the fields    ${email}    ${password}
    And user click login button
    Then user verify login success    ${role}

Download RKAP DMY Year 2023
    [Tags]    DMY_RKAP
    Given user enter RKAP page
    When user filter DMY airport
    And user enter income page
    Then user download RKAP DMY Year 2023

Download RKAP Year 2023
    [Tags]    RKAP_2023
    Given user enter RKAP page
    Then user download RKAP Year 2023
    
Upload RKAP Year 2021
    [Tags]    Upload_2021
    Given user click upload RKAP button
    When user select Year
    And user upload file RKAP    ${fileRKAP}
    Then user verify upload RKAP result