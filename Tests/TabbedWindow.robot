*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Tabbed Window Test
    open browser    http://demo.automationtesting.in/Windows.html   chrome
    maximize browser window
    click element   xpath://*[@id="Tabbed"]/a/button

    select window   Sakinalium | Home
    click element   xpath://ul[@class='nav navbar-nav navbar-right']//a[contains(text(),'Contact')]

    sleep    3

    close all browsers