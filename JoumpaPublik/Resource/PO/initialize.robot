*** Settings ***
Library     Selenium2Library

*** Keywords ***
Begin Web Test
    [Arguments]    ${delay}
    Maximize Browser Window
    Set Selenium Speed    ${delay}
    Title Should Be    JOUMPA Airport VIP Service

Begin Browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}