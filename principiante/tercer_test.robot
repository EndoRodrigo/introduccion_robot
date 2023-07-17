*** Settings ***
Documentation    Automatizacion completa de un formulario
Library    SeleniumLibrary

*** Variables ***
${url}    file:///C:/Users/laa0304/Documents/Experimentos/introduccion_robot/Page/index.html
${navegador}    chrome
${t}    3
${resultado}    PRUEBA DE REGSITRO EXITOSA

*** Test Cases ***
Reazaliar registro de un nuevo usuario
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Title Should Be    Formulario Completo
    Set Selenium Implicit Wait       4

    Element Should Be Visible    nombre
    Input Text    nombre    Endo Rodrigo
    Input Text    email    endo@gmail.com
    Input Password    contrasena    1234567
    Input Text    telefono    123-456-7890
    Element Should Be Enabled    edad
    Input Text    edad    18
    Select From List By Value    genero    otro
    Select From List By Label    pais    Colombia
    Input Text    comentarios    Avanzando en el proceso de aprender sobre automatizacion
    Select Checkbox  aceptar_terminos
    Click Element    submit
    Sleep    10
    ${resul}    Get Text    xpath=/html/body/h1
    Set Test Variable    ${resul}
    Log    ${resul}
    Should Be Equal As Strings    ${resul}    ${resultado}   