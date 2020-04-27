*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  OPEN BROWSER1
Suite Teardown  CLOSE BROWSER
Test Template  INVALID LOGIN

*** Test Cases ***
RIGHT USER EMPTY PASS   admin@yourstore.com     ${EMPTY}
RIGHT USER INVALID PASS     admin@yourstore.com     xyz
WRONG USER RIGHT PASS   xyz@yourstore.com   admin
WRONG USER WRONG PASS   xyz@yourstore.com   xyz
EMPTY USER RIGHT PASS   ${EMPTY}    admin

*** Keywords ***
INVALID LOGIN
    [Arguments]  ${USERNAME}    ${PASS}
    INPUT USERNAME      ${USERNAME}
    INPUT PASS      ${PASS}
    CLICK LOGIN BUTTON
    ERROR MESSAGE SHOULD BE VISIBLE