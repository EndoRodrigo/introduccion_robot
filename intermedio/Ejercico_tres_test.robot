*** Settings ***
Documentation    Automatizacion de pruebas con captura de pantallas
Library       SeleniumLibrary
Resource    ../keyworks/funsiones.robot

*** Variables ***
${url}    https://www.google.com/
${chrome}    chrome


*** Test Cases ***
Capturando pantalla de pruebas
    Open Browser    ${url}    ${chrome}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    #Title Should Be    el clima - Buscar con Google
    f_txt    q    clima en bogota
    f_enter    q
    f_foto_pagina    climas99.png