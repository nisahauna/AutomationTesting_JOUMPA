*** Settings ***
Library     Selenium2Library
Library    XML

*** Keywords ***
Click RKAP Button
    Click Element    xpath:/html/body/div/div[2]/div[1]/div/div[4]/a[6]/div/div/i
    Wait Until Page Contains Element    xpath:/html/body/div/div[2]/div[3]/div[2]/div/div[2]/div[1]/table/tfoot/tr/td[1]/div

Click Download RKAP Button
    Click Button    //*[@id="root"]/div[2]/div[3]/div[1]/div[2]/div/button[1]
    Sleep     80

Click Filter Airport
    Click Element    xpath:/html/body/div/div[2]/div[3]/div[1]/div[2]/div/div[1]/div/div/div[2]/div    
    Click Element    xpath:/html/body/div/div[2]/div[3]/div[1]/div[2]/div/div[1]/div/div[2]/div/div[5]

Verify Filter Result
    Element Text Should Be    xpath:/html/body/div/div[2]/div[3]/div[2]/div/div[2]/div[1]/table/tbody/tr/td[2]    DMY

Click Income Button
    Click Button    xpath:/html/body/div/div[2]/div[3]/div[2]/div/div[1]/div/div/div[2]/div/button[2]
    Element Text Should Be    xpath:/html/body/div/div[2]/div[3]/div[2]/div/div[2]/div[1]/table/tbody/tr/td[2]    DMY

Click Download RKAP DMY 2023
    Click Button    xpath:/html/body/div/div[2]/div[3]/div[1]/div[2]/div/button[1]
    Sleep    5

Click Upload RKAP Button
    Click Button    xpath:/html/body/div[1]/div[2]/div[3]/div[1]/div[2]/div/button[2]
    Wait Until Page Contains    Upload RKAP

Select Year
    Click Element    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[1]/div[1]/div[1]/div/div[2]/div
    Click Element    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[1]/div[1]/div[1]/div[2]/div/div[3]

Click Download Template
    Click Element    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[1]/div[2]/p/span/u

Click Field Upload File RKAP
    [Arguments]    ${fileRKAP}
    Choose File    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/input   ${fileRKAP}

Click Save RKAP Button
    Click Button    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[2]/div/div/div/button[2]

Verify Upload RKAP Success
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Import RKAP Successful