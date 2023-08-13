*** Settings ***
Documentation     Practica de automatizacion con unarchivo extermno
Library        SeleniumLibrary    timeout=10
Library        ../keyworks/ReadExcel.py

*** Variables ***
${URL}    https://the-internet.herokuapp.com/login
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
The Internet test
    Inicio
    Login
    Final

*** Keywords ***
Inicio
    [Documentation]    Inicio del sistema practica con python
    Open Browser     ${URL}   ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s

Login
    [Documentation]    Login del sistema
    Input Text    xpath=//input[@name="username"]    endo
    Input Text    xpath=//input[@name="password"]    ***
    Click Element    xpath=//i[@class="fa fa-2x fa-sign-in"]

Final
    [Documentation]    Final de la prueba
    Sleep    2
    Close Browser

