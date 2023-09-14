*** Settings ***
Library     Selenium2Library

*** Keywords ***
Click Data Master Button
    Click Element    xpath:/html/body/div[1]/div[2]/div[1]/div/div[4]/a[11]/div/div/i
    Click Element    xpath:/html/body/div[1]/div[2]/div[1]/div/div[4]/a[11]/div/div/span
    Element Text Should Be    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[1]/div[1]    Master Data
    
Click Master Corporate Button    
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[1]/div[4]/div[2]/span
    Element Text Should Be    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div[1]/div    Corporation

Click Add Corporate Button
    Click Button    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div[2]/div/button
    Sleep    2

Input Corporate Type Group
    [Arguments]    ${id_corp}    ${name_corp}    ${min_pax}    ${max_pax}
    Input Text    name:unique_id    ${id_corp} 
    Input Text    name:name    ${name_corp}
    Click Element    # Field corp type 1
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[3]/div[2]/div/div[1]/div/div[1]/div[2]
    Click Element    # List corp type 1
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[3]/div[2]/div/div[1]/div[2]/div/div[2]
    Click Element    # Group 1
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[3]/div[2]/div[3]/div[1]/div/div/button[2]
    Click Element    # Checkbox Group 1
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[3]/div[2]/div[3]/div[2]/div/label/span
    Input Text       # Field min pax
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[3]/div[2]/div[3]/div[2]/div[2]/div[1]/div[1]/div/div/input    ${min_pax}
    Input Text       # Field max pax
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[3]/div[2]/div[3]/div[2]/div[2]/div[1]/div[2]/div[2]/div/input    ${max_pax}
    Click Element    # Group 2
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[3]/div[2]/div[3]/div[1]/div/div/button[3]
    Click Element    # Checkbox Group 2
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[3]/div[2]/div[3]/div[2]/div/label/span
    Input Text       # Field min pax 2
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[3]/div[2]/div[3]/div[2]/div[2]/div[1]/div[1]/div/div/input    ${min_pax}
    Input Text       # Field max pax 2
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[3]/div[2]/div[3]/div[2]/div[2]/div[1]/div[2]/div[2]/div/input    ${max_pax}
    ...    
Input Corporate Type Package
    [Arguments]    ${min_pax}    ${max_pax}
    Click Button     
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[4]/button
    Click Element    
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[4]/div/div[2]/span
    #Sleep    100
    Click Element    
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[4]/div[2]/div/div[1]/div/div[1]/div[2]
    Click Element    
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[4]/div[2]/div/div[1]/div[2]/div/div[3]
    Input Text       
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[4]/div[2]/div[3]/div[1]/div[1]/div/div/input    ${min_pax}
    #Sleep    100
    Input Text       
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[4]/div[2]/div[3]/div[1]/div[2]/div[2]/div/input    ${max_pax}

Input Corporate Type FIT
    Click Button     
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[5]/button
    Click Element    
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[5]/div/div[2]/span
    Click Element    
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[5]/div[2]/div/div[1]/div/div[1]/div[2]
    Click Element    
    ...    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[1]/div/div[5]/div[2]/div/div[1]/div[2]/div/div[4]

Click Save Button    
    Click Button    xpath:/html/body/div[2]/div/div[1]/div/div/form/div[2]/div/div/div/button[2]

Verify Add Corporate Success
    Wait until element is visible    xpath://div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     xpath://div[contains(@class, 'Toastify__toast-body')]    Corporate Data Added Succesfully


     
