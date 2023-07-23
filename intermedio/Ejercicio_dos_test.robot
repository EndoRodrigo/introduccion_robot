*** Settings ***
Library           SeleniumLibrary
Resource        ../keyworks/key_ejercicio_dos.robot




*** Test Cases ***
Automatizacion de logn completo
    Abrir el navegado de chrome
    Ingresar el usuario en el formulario
    Ingresar la contraseña en el formulario    ${pass}
    Hacer clic sobre el boton login
    Verificacion del resultado de la prueba

    


