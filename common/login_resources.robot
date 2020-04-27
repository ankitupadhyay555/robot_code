*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}      https://admin-demo.nopcommerce.com/

*** Keywords ***
OPEN BROWSER1
    open browser    ${URL}      ${BROWSER}
    maximize browser window

CLOSE BROWSER
    close all browsers

OPEN LOGIN PAGE
    go to   ${URL}

INPUT USERNAME
    [Arguments]  ${USERNAME}
    input text  id:Email    ${USERNAME}

INPUT PASS
    [Arguments]  ${PASS}
    input text  id:Password     ${PASS}

CLICK LOGIN BUTTON
    click element   xpath://input[@class='button-1 login-button']

CLICK LOGOUT BUTTON
    click link   xpath://a[contains(text(),'Logout')]

ERROR MESSAGE SHOULD BE VISIBLE
    page should contain     Login was unsuccessful

DASHBORD PAGE SHOULD VISIBLE
    page should contain     Dashboard


