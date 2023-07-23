*** Settings ***
Documentation    Proyecto de automatizacion nivel intermedio
Library           SeleniumLibrary
Resource    ../keyworks/funsiones.robot


*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${navegador}    chrome
${user}    endo
${pass}    12345

*** Keywords ***
Abrir el navegado de chrome
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    #Title Should Be    OrangeHRM
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s

Ingresar el usuario en el formulario
    f_txt    username    ${user}

Ingresar la contraseña en el formulario
    [Arguments]    ${pass}
    Input Text    password    ${pass}

Hacer clic sobre el boton login
    Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

Verificacion del resultado de la prueba
    Wait Until Element Is Visible    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/div/div[1]/div[1]/p
    ${resul}    Get Text    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/div/div[1]/div[1]/p
    Log To Console    ${resul}

Cerrar el navegador
    Sleep    5
    Close Browser
