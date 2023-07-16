*** Settings ***
Documentation    Automatizacion completa de un formulario
Library    SeleniumLibrary

*** Variables ***
${url}    https://opencart.abstracta.us/index.php?route=account/register
${navegador}    chrome
${t}    3

*** Test Cases ***
Reazaliar registro de un nuevo usuario
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Title Should Be    Register Account