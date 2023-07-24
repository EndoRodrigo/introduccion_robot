*** Settings ***
Documentation    Automatizacion pruebas con scroll de las paginas
Library       SeleniumLibrary
Resource    ../keyworks/funsiones.robot

*** Variables ***
${url}    https://www.google.com/
${chrome}    chrome


*** Test Cases ***
Realzar un scrooll al realizar un movimiento en pantalla
    Open Browser    ${url}    ${chrome}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    #Title Should Be    el clima - Buscar con Google
    f_txt    q    ferrari
    f_enter    q
    Scroll Element Into View    xpath=//div[@class="Z26q7c UK95Uc VGXe8"]
    f_foto_pagina    ferari.png