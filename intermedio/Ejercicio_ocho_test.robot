*** Settings ***
Documentation    Automatizacion pruebas con datos de aun archivo externo
Library       SeleniumLibrary
Resource    ../keyworks/funsiones.robot
Library    DataDriver    ../files/Data.xlsx    sheet_name=Hoja1

Test Setup    Inicio
Test Teardown    Cerrar
Test Template    Connectar excel

*** Variables ***
${url}    https://demoqa.com/text-box
${chrome}    chrome


*** Test Cases ***
Pruebas de excel using    ${name}    ${email}
    
    



*** Keywords ***
Inicio
    Open Browser    ${url}    ${chrome}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    #Title Should Be    el clima - Buscar con Google

Connectar excel
    [Arguments]    ${name}    ${email}
    f_txt    userName    ${name}
    f_txt    userEmail    ${email}
    f_buton    submit


Cerrar
    #Set Selenium Speed    5
    Close Window