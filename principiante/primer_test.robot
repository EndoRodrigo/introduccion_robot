*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Abrir Navegador Chrome
    Open Browser    https://www.example.com    chrome

    # Realizar acciones en el navegador abierto, como hacer clic en elementos, enviar formularios, etc.

    Close Browser
