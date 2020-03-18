*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Testing Frames
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html      chrome
    maximize browser window

    #First frame
    select frame    packageListFrame
    click link      org.openqa.selenium
    unselect frame

    #Second frame
    select frame    packageFrame
    click link      WebDriver
    unselect frame

    #Third frame
    select frame    classFrame
    click link      Index
    unselect frame

    close browser