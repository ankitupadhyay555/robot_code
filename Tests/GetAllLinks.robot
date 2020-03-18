*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Get All Links Test
    open browser    http://newtours.demoaut.com/    chrome
    maximize browser window
    ${getAllCount}  get element count   xpath://a
    log to console  ${getAllCount}

    close browser