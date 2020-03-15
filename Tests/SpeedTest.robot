*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demowebshop.tricentis.com/register
${browser}  chrome
${speed}    get selenium speed
${time}  get selenium speed
*** Test Cases ***
RegisterTest
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium timeout    10 sec
    log to console  ${time}
    wait until page contains    Demo Web Shop. Registerrr
    log to console  ${speed}
    set selenium speed  3 second
    select radio button     Gender  M
    set selenium implicit wait  10 seconds
    input text  xpath://input[@id='FirstName']  sefhklse
    input text  xpath://input[@id='LastName']   skfhsdjkf
    input text  xpath://input[@id='Email']  ankit@gmail.com

    input text  xpath://input[@id='Password']   sehfklse
    input text  xpath://input[@id='ConfirmPassword']    sehfklse
    log to console  ${speed}
    close browser