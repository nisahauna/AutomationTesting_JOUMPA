*** Settings ***
Library     Selenium2Library
Resource    ../PO/RKAP.robot

*** Keywords ***
user enter RKAP page
    Click RKAP Button

user download RKAP Year 2023
    Click Download RKAP Button

user filter DMY airport
    Click Filter Airport
    Verify Filter Result

user enter income page
    Click Income Button

user download RKAP DMY Year 2023
    Click Download RKAP DMY 2023

user click upload RKAP button
    Click Upload RKAP Button

user select Year
    Select Year

user upload file RKAP
    [Arguments]    ${fileRKAP}
    Click Field Upload File RKAP    ${fileRKAP}
    Click Save RKAP Button

user verify upload RKAP result
    Verify Upload RKAP Success