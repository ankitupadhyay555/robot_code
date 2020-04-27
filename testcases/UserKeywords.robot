*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/Resources.robot


*** Variables ***
${url}   http://newtours.demoaut.com/
${browser}  chrome

*** Test Cases ***
TC1
    ${title}    launchBrowser   ${url}   ${browser}
    log to console  ${title}
    log     ${title}
    input text  name:userName   mercury
    input text  name:password   mercury

    close browser