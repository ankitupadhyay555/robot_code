*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
#User define keywords with no argument.
launchBrowser
    [Arguments]     ${appurl}   ${appbrowser}
    open browser    ${appurl}  ${appbrowser}
    maximize browser window
    ${title}    get title
    [return]  ${title}