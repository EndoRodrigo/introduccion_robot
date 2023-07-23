*** Settings ***
Documentation    Automatizacion de pruebas con captura de pantallas
Library       SeleniumLibrary
Resource    ../keyworks/key_ejercicio_dos.robot
Resource    ../keyworks/key_ejercicio_dos.robot
Suite Setup    Abrir el navegado de chrome
Suite Teardown    Cerrar el navegador

*** Variables ***
${url}    https://demo.nopcommerce.com/login
${chrome}    chrome


*** Test Cases ***
Capturando pantalla de pruebas
    f_txt    id=Email      endo@gmail.com
    f_txt    id=Password        12345
    f_buton    xpath=//button[@class="button-1 login-button"]

Capturando pantalla de pruebas
    f_txt    id=Email        endo@gmai
    f_txt    id=Password        12345
    f_buton    xpath=//button[@class="button-1 login-button"]