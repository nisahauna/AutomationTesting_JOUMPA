*** Settings ***
Library     Selenium2Library

*** Keywords ***
Click others button
    Click Element    xpath:/html/body/div/div[2]/div[3]/div[2]/div/div/div[1]/table/tbody/tr[2]/td[9]/div/button
    
Click delete button    
    Click Element    xpath:/html/body/div[2]/div[3]/ul/li[2]
    Click Button     xpath:/html/body/div[2]/div/div[1]/div/div/div[3]/div/div/div/button[2]

Verifiy delete success
    Wait until element is visible    //div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be     //div[contains(@class, 'Toastify__toast-body')]    Promo has been removed
    