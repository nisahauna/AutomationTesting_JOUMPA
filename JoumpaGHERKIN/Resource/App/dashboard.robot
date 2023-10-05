*** Settings ***
Library     Selenium2Library
Resource    ../PO/dashboard.robot

*** Keywords ***
user enter dashboard table page
    Click Table Button

user download daily report
    Click Download Report Button


