*** Settings ***
Documentation    Automatizacion de pruebas del 2023
Library    SeleniumLibrary

*** Variables ***
${url}=    https://getbootstrap.com/docs/5.3/forms/floating-labels/#selects
${navegador}=    chrome
${t}=    10

*** Test Cases ***
Reazalizar clic sobre el radio botton
    [Documentation]    Demo radio button
    [Tags]    test_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    #Title Should Be    DEMOQA
    Sleep    ${t}
    #radio
    #Select Radio Button    exampleRadios    option2
    #Click Element    css=label[for=yesRadio] funciona para pagina demo qa
    #Cheboc
    #Click Button    flexCheckDefault
    #combobox
    Select From List By Value    floatingSelect    3
    Sleep    ${t}
    Select From List By Label    floatingSelect    Two
    Sleep    ${t}
    Select From List By Index    floatingSelect    0
    Sleep    ${t}
    Close Browser