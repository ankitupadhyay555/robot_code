*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check boxes.
    open browser     ${url}     ${browser}
    maximize browser window
#    set selenium speed  2seconds

    input text  xpath://input[@name='firstname']   sjfkd
    input text  xpath://input[@name='lastname']    fksfnkle

    #selecting radio button
    select radio button     sex     Female
    select radio button     exp     5

    #selecting check box
    select checkbox    BlackTea
    select checkbox      RedTea

    unselect checkbox      RedTea

    #Hendling dropdown
    select from list by label   continents  Australia
    select from list by index   continents  6

    #List box
    select from list by label   selenium_commands   Switch Commands
    select from list by label   selenium_commands   WebElement Commands
    select from list by label   selenium_commands   Wait Commands

    unselect from list by label     selenium_commands   Wait Commands
    click element  xpath://button[@id='submit']

    close browser





*** Keywords ***
