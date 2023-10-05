*** Settings ***
Library     Selenium2Library
Resource    ../PO/login.robot


*** Keywords ***
user open browser
    [Arguments]    ${url}    ${browser}    ${delay}
    Begin Browser    ${url}    ${browser}
    Begin Web Test    ${delay}

user fill the fields
    [Arguments]    ${email}    ${password}
    Input Email    ${email}
    Fill Password    ${password}

user click login button
    Click Login Button

user verify login success
    [Arguments]    ${role}
    Verify Login Success    ${role}

user cabang verify login success
    [Arguments]    ${role2}
    Verify Login Success    ${role2}

user verify login failed
    Verify Login Failed

user cabang fill the fields
    [Arguments]    ${email2}    ${password2}
    Input Email    ${email2}
    Fill Password    ${password2}

user fill the fields with invlid data
    [Arguments]    ${invalid_email}    ${invalid_password}
    Input Email    ${invalid_email}
    Fill Password    ${invalid_password}
