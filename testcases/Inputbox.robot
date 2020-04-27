*** Settings ***
Library  SeleniumLibrary
Resource  ../variables/variables.robot

*** Test Cases ***
Open Browser and open up Web Page.
    Open Browser    https://mcswiss-web-stage.web.app/  ${browser}
    close Browser

Open Browser and Login into Amazon web.
    Open Browser    ${url}  ${browser}
    LoginToApplication
    close Browser

Testing Input Box
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    element should be visible   xpath://div[@class='header-logo']//a//img
    click link  xpath://a[@class='ico-login']
    input text  id:Email    ${id}
    sleep   5
    clear element text  id:Email
    sleep   3
    close browser



*** Keywords ***
LoginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email    ${id}
    input text  id:Password  ${pass}
    click element   xpath://input[@class='button-1 login-button']