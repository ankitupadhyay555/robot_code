*** Settings ***
Library  SeleniumLibrary
Resource    C:/development/robot-scripts/Resources/login_resources.robot
Library     DataDriver      C:/development/robot-scripts/TestData/InvalidLoginSheet.csv
#Suite Setup  OPEN BROWSER1
#Suite Teardown  CLOSE BROWSER
#Test Setup  OPEN LOGIN PAGE
Test Template   INVALID_LOGIN

*** Test Cases ***
Login with user ${username} and password ${pass}

#    #${username} and password ${pass}
#    INVALID_LOGIN   ${username}     ${pass}

*** Keywords ***
INVALID_LOGIN
    [Arguments]     ${username}     ${pass}
    log to console  ${username}
#    INPUT USERNAME  ${USERNAME}
#    INPUT PASS  ${PASS}
#    CLICK LOGOUT BUTTON
#    ERROR MESSAGE SHOULD BE VISIBLE