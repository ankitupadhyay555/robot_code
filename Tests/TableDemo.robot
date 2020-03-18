*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Table Count
    open browser     http://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    scroll element into view    xpath://table[@name='BookTable']

    ${TRowCount}    get element count   xpath://table[@name='BookTable']/tbody/tr
    log to console  ${TRowCount}

    ${TColCount}    get element count   xpath://table[@name='BookTable']/tbody/tr/th
    log to console  ${TColCount}

    ${author}   get text    xpath://table[@name='BookTable']/tbody/tr/th[2]
    log to console      ${author}

    table column should contain    xpath://table[@name='BookTable']    2   Author
    table row should contain   xpath://table[@name='BookTable']    4   Learn JS
    table cell should contain   xpath://table[@name='BookTable']    4   2   Animesh
    table header should contain     xpath://table[@name='BookTable']    Subject

    close browser