*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Login Page Screenshot
    open browser    https://opensource-demo.orangehrmlive.com/  chrome
    maximize browser window
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123

    capture element screenshot   xpath://div[@id='divLogo']//img     C:/development/robot-scripts/Results/logo.png
    capture page screenshot      C:/development/robot-scripts/Results/loginpage.png

    close browser