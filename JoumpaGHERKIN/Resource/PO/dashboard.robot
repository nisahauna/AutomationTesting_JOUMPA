*** Settings ***
Library     Selenium2Library
Library    XML

*** Keywords ***
Click Table Button
    Click Button    xpath:/html/body/div/div[2]/div[3]/div[1]/div[2]/div/div/div/div/div/div[2]/div/button[2]
    Wait Until Page Contains Element    xpath:/html/body/div/div[2]/div[3]/div[2]/p

Click Download Report Button
    Click Button    xpath:/html/body/div/div[2]/div[3]/div[2]/div/button
    Sleep    5
