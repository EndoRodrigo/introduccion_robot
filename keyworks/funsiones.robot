*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${ruta}    C:/Users/laa0304/Documents/Experimentos/introduccion_robot/img


*** Keywords ***
f_txt
    [Arguments]    ${self}    ${dato}
    Wait Until Element Is Visible    ${self}
    Wait Until Element Is Enabled    ${self}
    Element Should Be Visible    ${self}
    Execute Javascript    window.scroll(0,20)
    Input Text    ${self}    ${dato}

f_enter
    [Arguments]    ${ruta}
    Wait Until Element Is Visible    ${ruta}
    Wait Until Element Is Enabled    ${ruta}
    Element Should Be Visible    ${ruta}
    Execute Javascript    window.scroll(0,20)
    Press Keys    ${ruta}    ENTER

f_buton
    [Arguments]    ${self}
    Wait Until Element Is Visible    ${self}
    Wait Until Element Is Enabled    ${self}
    Element Should Be Visible    ${self}
    Scroll Element Into View    ${self}
    Execute Javascript    window.scroll(0,500)
    Click Button    ${self}

f_foto_pagina
    [Arguments]    ${name}
    Capture Page Screenshot    ${ruta}/${name}
