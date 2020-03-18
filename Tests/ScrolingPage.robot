*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Scrolling Page
    open browser    https://www.countries-ofthe-world.com/world-currencies.html  chrome
    maximize browser window

    #scroll down till the limit 2500.
    execute javascript  window.scrollTo(0,2500)

    #scroll down untill the element visible.
    scroll element into view    xpath://*[@id="content"]/div[2]/table/tbody/tr[114]

    #Till end of the page.
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep   5

    #till the top of the page.
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)

    close browser