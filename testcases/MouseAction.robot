*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Mouse Actions
    #Right click/open context menu
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    maximize browser window
    open context menu   xpath://span[@class='context-menu-one btn btn-neutral']
    sleep   3

    #Double click action
    go to   http://testautomationpractice.blogspot.com/
    double click element    xpath://button[contains(text(),'Copy Text')]
    sleep   3

    #Drag and Drop
    go to   http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop   id:box6     id:box106
    drag and drop   id:box7     id:box101
    drag and drop   id:box5     id:box105

    sleep   5
    close browser
