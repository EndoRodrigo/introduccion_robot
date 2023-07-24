*** Settings ***
Documentation    Automatizaciones de opciones de clip del mause
Library       SeleniumLibrary


*** Variables ***
${url}    https://demoqa.com/automation-practice-form
${chrome}    chrome


*** Test Cases ***
Capturando eventos de clic del mause
    Open Browser    ${url}    ${chrome}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .5s
    
    Choose File    id=uploadPicture    C:/Users/laa0304/Documents/Experimentos/introduccion_robot/files/carga.txt
    sleep    5