*** Settings ***
Library     Selenium2Library
Library    XML

*** Keywords ***
Click Schedule Button
    Click Element    xpath:/html/body/div/div[2]/div[1]/div/div[4]/a[4]/div/div/i
    Wait Until Page Contains    Schedule

Click Operational Button
    Click Element    xpath:/html/body/div/div[2]/div[3]/div/div/div[1]/div[3]
    Element Text Should Be    xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div[1]/div/span    Operational

Enter Filter date
    Click Button    # Filter Button
    ...    xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div[2]/div/button[1]
    Click Element   # Field Date
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/form/div[1]/div[1]/div/input
    Click Element   # Pick Date (27 Sept 2023)
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/form/div[1]/div[2]/div/div/div[3]/div/div[2]/button[32]/span
    Click Button    # Button Apply Filter
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/form/div[5]/div/div/div[2]/button[2]

