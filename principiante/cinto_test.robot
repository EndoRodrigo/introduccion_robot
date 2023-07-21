*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testpages.herokuapp.com/frames/index.html
${navegador}    chrome

*** Test Cases ***
Trabajando con paginas envevidas con frame
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Title Should Be    Frameset Example Title (Example 6)
    Set Selenium Implicit Wait    10
    Set Selenium Speed    1

    Select Frame    topNav
    Click Element    xpath=/html/body/p/a
    Unselect Frame

    Select Frame    content
    Click Element    xpath=/html/body/ul[2]/li[1]/a

