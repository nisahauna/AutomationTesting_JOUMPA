*** Settings ***
Library     Selenium2Library
Library    XML

*** Keywords ***
Click User Button
    Click Element    xpath:/html/body/div[1]/div[2]/div[1]/div/div[4]/a[9]/div/div/i
    Click Element    xpath:/html/body/div[1]/div[2]/div[1]/div/div[4]/a[9]/div/div/span
    Click Element    xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div[2]
    Element Text Should Be    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div[1]/div/span    User Back Office

Click Customer Button
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[1]/div[4]
    Wait Until Page Contains Element   xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div[1]/div

Click Search Button
    Click Element    xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div[2]/div/div[1]/div/span

Input Customer Name
    Input Text    xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div[2]/div/div[1]/input    nisa
    Press Keys    xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div[2]/div/div[1]/input    ENTER

Verify customer name
    Element Text Should Be    xpath:/html/body/div/div[2]/div[3]/div/div/div[3]/div/div/div[1]/table/tbody/tr/td[3]    Nisa Testing

Click detail button
    Click Element    xpath:/html/body/div/div[2]/div[3]/div/div/div[3]/div/div/div[1]/table/tbody/tr/td[6]/div/button
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li

Verify customer detail
    Element Text Should Be    xpath:/html/body/div[2]/div/div[1]/div/div/div[2]/div/div[1]/p[1]    Nisa Testing
    
