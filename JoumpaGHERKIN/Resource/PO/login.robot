*** Settings ***
Library     Selenium2Library


*** Keywords ***
Begin Web Test
    [Arguments]    ${delay}
    Maximize Browser Window
    Set Selenium Speed    ${delay}
    Title Should Be    JOUMPA

Begin Browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

Input Email
    [Arguments]    ${email}
    Input Text    name:email    ${email}

Fill Password
    [Arguments]    ${password}
    Input Text    name:pwd    ${password}

Click Login Button
    Click Button    //*[@id="root"]/div[2]/div/div[1]/div/form/div[4]/button

Verify Login Success
    [Arguments]    ${role}
    Wait until element is visible    //div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be
    ...    //div[contains(@class, 'Toastify__toast-body')]
    ...    Well done! you have logged in as ${role}

Verify Login Success Cabang
    [Arguments]    ${role2}
    Wait until element is visible    //div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be
    ...    //div[contains(@class, 'Toastify__toast-body')]
    ...    Well done! you have logged in as ${role2}

Verify Login failed
    Wait until element is visible    //div[contains(@class, 'Toastify__toast-body')]
    Element Text Should Be
    ...    //div[contains(@class, 'Toastify__toast-body')]
    ...    Please contact the admin, your account is not registered yet

Input Email Cabang
    [Arguments]    ${email2}
    Input Text    name:email    ${email2}

Fill Password Cabang
    [Arguments]    ${password2}
    Input Text    name:pwd    ${password2}
