*** Settings ***
Library     Selenium2Library
Library    XML
Resource    corpRsv.robot
Resource    addCorp.robot
Resource    edit.robot

*** Keywords ***
Click Product Button
    Click Element    xpath:/html/body/div[1]/div[2]/div[1]/div/div[4]/a[10]/div
    Click Element    xpath:/html/body/div[1]/div[2]/div[1]/div/div[4]/a[10]/div/div/span
    Wait Until Page Contains    Corporation

Click Set Price Button
    Click Button    xpath:/html/body/div[1]/div[2]/div[3]/div/div/div[2]/div[2]/div/button
    Wait Until Page Contains    Set Price Corporation

Select Corporate Name
    Press Keys    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div[2]/div[1]/div/div[1]/div[1]/div[1]/div[2]    Automate
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div[2]/div[1]/div/div[1]/div[2]/div/div[1]

Select Cooperation Type
    Press Keys    None    \ue00f
    Click Element  # Add Price Button
    ...    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[3]/div[2]/div/div[2]/div/div/div[2]/div[3]/div
    Wait Until Page Contains    Details
   # Sleep    100

Enter Period Date
    [Arguments]    ${start_date}    ${end_date}
    Input Text    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[2]/div/div[2]/div[2]/div[1]/div[2]/div/div/input    ${start_date}
    Input Text    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[2]/div/div[2]/div[2]/div[2]/div[2]/div/div/input    ${end_date}

Click Check Box MnG Domestic
    Click Element    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div/label/span
    
Input Field Airport
    Press Keys   xpath:/html/body/div/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[2]/div/div[1]/div[1]/div[2]    DMY   
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[2]/div/div[2]/div/div    

Input Field Activities
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[3]/div/div[1]/div[1]/div[2]
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[3]/div/div[2]/div/div[1]
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[3]/div/div[1]/div[1]/div[2]
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[3]/div/div[2]/div/div

Input Concession
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[4]/label/span
    Input Text    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[4]/div/input    11

Input PPN
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[5]/label/span
    Input Text    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[5]/div/input    10

Input Price
    Input Text    # Hajj Adult Group
    ...    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[6]/div[2]/div/div[2]/div[2]/input[1]    200000
    Input Text    # Hajj Child Group  
    ...    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[6]/div[2]/div/div[2]/div[2]/input[2]    200000
    Input Text    # Hajj Infant Group
    ...    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[6]/div[2]/div/div[2]/div[2]/input[3]    100000

Click Save Price Button
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[2]/div/div[4]/div/div/div[2]/button[2]
    Wait Until Page Contains    Meet and Greet Domestic

Click Second Save Button
    Click Element    xpath:/html/body/div[1]/div[2]/div[3]/form/div/div/div[4]/div/div/div/button[2]

Verifiy Set Price Success
    Wait until element is visible    //div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     //div[contains(@class, 'Toastify__toast-body')]    Corporate Price Data Added Successfully
   
Enter Keyword Search
    Click Element    xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div[2]/div/div[1]/div/span
    Input Text    xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div[2]/div/div[1]/input    Automate
    Press Keys    xpath:/html/body/div/div[2]/div[3]/div/div/div[2]/div[2]/div/div[1]/input    ENTER

Click Detail Corporate Button
    Click Button    xpath:/html/body/div/div[2]/div[3]/div/div/div[3]/div/div/div[1]/table/tbody/tr/td[5]/div/button
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[1]

Verify Detail Price Corporation
    Wait Until Page Contains    PT Automate 1
    Element Text Should Be    
    ...    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[3]/div[2]/div/div[2]/div/div/div[2]/div[2]/div[1]/div/div[2]/div/div    
    ...    Meet and Greet Domestic

Click Edit Corporate Button
    Click Button    xpath:/html/body/div/div[2]/div[3]/div/div/div[3]/div/div/div[1]/table/tbody/tr/td[5]/div/button
    Click Element   xpath:/html/body/div[2]/div[3]/ul/li[2]

Click Detail Price Product
    Click Element    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[3]/div[2]/div/div[2]/div/div/div[2]/div[2]/div[3]/div/div/div
    Wait Until Page Contains    Details

Edit Field Airport
    Press Keys   xpath:/html/body/div/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[2]/div/div[1]/div[1]/div[2]    CGK   
    Click Element    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[2]/div/div[2]/div/div

Edit Price
    Click Element    # Expand Price Umrah
    ...    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[6]/div[2]/div/div[3]/div[2]/span
    Input Text    # Umrah Adult Group
    ...    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[6]/div[2]/div/div[3]/div[2]/input[1]    100000
    Input Text    # Umrah Child Group  
    ...    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[6]/div[2]/div/div[3]/div[2]/input[2]    100000
    Input Text    # Umrah Infant Group
    ...    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[2]/div/div[3]/div[2]/div/div[2]/div[6]/div[2]/div/div[3]/div[2]/input[3]    100000
    
Click Edit Save Button
    Click Button    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[2]/div/div[4]/div/div/div[2]/button[2]
    Wait Until Page Contains    Edit Price Corporation

Click Second Edit Save Button
    Click Button    xpath:/html/body/div/div[2]/div[3]/form/div/div/div[4]/div/div/div/button[2]

Verify Edit Corporate Price Success
    Wait until element is visible    //div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     //div[contains(@class, 'Toastify__toast-body')]    Change Corporate Price Data Successfull

Click Delete Corporate Button
    Click Button    xpath:/html/body/div/div[2]/div[3]/div/div/div[3]/div/div/div[1]/table/tbody/tr/td[5]/div/button
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[3]
    Sleep    15

Click Confirm Delete Button
    Click Button    xpath:/html/body/div[2]/div/div[1]/div/div/div[3]/div/div/div/button[2]

Verify Delete Corporate Price Success
    Wait until element is visible    //div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     //div[contains(@class, 'Toastify__toast-body')]    Corporate Price Data Removed Successfully