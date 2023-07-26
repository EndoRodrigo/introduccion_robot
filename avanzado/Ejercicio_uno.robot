*** Settings ***
Documentation    Automatizaciones de opciones de clip del mause
Library        SeleniumLibrary
Library        ../keyworks/keywork_python.py
Resource        ../keyworks/funsiones.robot


*** Variables ***
${url}    https://demoqa.com/buttons
${chrome}    chrome


*** Test Cases ***
Capturando eventos de clic del mause
    Open Browser    ${url}    ${chrome}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s
    Crear un formulario desde python
    Crear Dsubcarpeta    suvcapeta
    Registar nuevo usuario en el curso


*** Keywords ***
Crear un formulario desde python
    crear_directorio

Creare una subcarpeta desde python
    [Arguments]    ${name}
    Crear Dsubcarpeta     ${name}

Registar nuevo usuario en el curso
    ${respuesta}=    Concatenar Nombre    endo    rodriguez    ariza
    Log To Console    ${respuesta}