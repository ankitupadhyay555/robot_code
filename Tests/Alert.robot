*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Handling Alert
    open browser    http://testautomationpractice.blogspot.com/     chrome
    #handle alert by accepting
    click element   xpath://button[contains(text(),'Click Me')]
    sleep   3
    handle alert    accept

    #handle alert by canceling it.
    click element   xpath://button[contains(text(),'Click Me')]
    sleep   3
    handle alert    dismiss

    #handle alert by leaving it
    click element   xpath://button[contains(text(),'Click Me')]
    sleep   3
    handle alert    leave

    #handle alert check
    alert should be present      Press a button!

    close browser
