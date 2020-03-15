*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Close Broswer
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    open browser    http://www.practiceselenium.com/practice-form.html  chrome

    close browser

Close All Broswer
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window

    open browser    http://www.practiceselenium.com/practice-form.html  chrome

    close all browsers
