*** Settings ***
Documentation    Prueba de automatizacion completa de un login
Library    SeleniumLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${navegador}    chrome
${title}    ARAG Account - Log In
${user}    endo
${pass}    12345


*** Test Cases ***
Verificacion de credenciales de un usuario
    [Documentation]    Validacion de user y pass incorrectos
    [Tags]    login_uno
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Title Should Be    ${title}
    Set Selenium Implicit Wait    10
    Set Selenium Speed    .4s
    
    Input Text    username    ${user}
    Click Element    xpath=/html/body/app-root/arag-app-layout/div/div[2]/div/div/main/div/app-login/app-account-page/div/div[2]/div
    Wait Until Element Is Visible    username-error-message
    Log To Console    Primer error encontado ok
    Wait Until Page Contains    Login is too short.

    Input Password    password    ${pass}
    Click Element    xpath=/html/body/app-root/arag-app-layout/div/div[2]/div/div/main/div/app-login/app-account-page/div/div[2]/div
    Wait Until Element Is Visible    password-error-message
    Log To Console    Segundo error encontado ok
    Wait Until Page Contains    This password is too short.


    Click Button    xpath=//*[@id="login-form"]/div/button

