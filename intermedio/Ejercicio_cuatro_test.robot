*** Settings ***
Documentation    Automatizaciones de opciones de clip del mause
Library       SeleniumLibrary


*** Variables ***
${url}    https://demoqa.com/buttons
${chrome}    chrome


*** Test Cases ***
Capturando eventos de clic del mause
    Open Browser    ${url}    ${chrome}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s

    Double Click Element    doubleClickBtn
    Open Context Menu    rightClickBtn
    Click Element    rightClickBtn

Moviendo de elemntos entre el html
    Open Browser    https://demoqa.com/droppable    ${chrome}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s

    Drag And Drop    draggable    droppable
    Sleep    5


Moviendo de elemntos entre el html por corrdenadas
    Open Browser    https://demoqa.com/droppable    ${chrome}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s

    Drag And Drop By Offset    draggable    200    50
    Sleep    5
