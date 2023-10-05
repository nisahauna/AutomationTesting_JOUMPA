*** Settings ***
Library     Selenium2Library
Resource    ../PO/initialize.robot

*** Keywords ***
user open browser
    [Arguments]    ${url}    ${browser}    ${delay}
    Begin Browser     ${url}    ${browser}
    Begin Web Test    ${delay}