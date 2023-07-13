*** Settings ***
Documentation    Proyecto de pruebas de endo del año 2023
Library    SeleniumLibrary

*** Variables ***
${url}=    https://demoqa.com/text-box
${name}=     Endo
${mail}=     endorodrigo19@gmial.com
${address}=     Calle 80
${address2}=     Calle 90
${t}=    .2



*** Test Cases ***
Abrir Navegador Chrome
    [Documentation]    Primera prueba del sistema
    [Tags]    test_uno
    Log    ${name}
    Open Browser    ${url}    edge
    Maximize Browser Window
    Title Should Be    DEMOQA
    ${campo}=    Set Variable    userName
    Element Should Be Visible    ${campo}
    Element Should Be Enabled    ${campo}
    Input Text    ${campo}    ${name} 
    Input Text    userEmail    ${mail}
    Input Text    currentAddress    ${address}
    Input Text    permanentAddress    ${address2} 
    Execute Javascript    window.scrollTo(0,300)
    Sleep     ${t}
    Click Button    submit
    Sleep     ${t}
    Close Browser

Abrir segundo Navegador Chrome
    [Documentation]    Segunda prueba del sistemas
    [Tags]    test_dos
    Open Browser    https://demoqa.com/text-box    edge
    Maximize Browser Window
    Input Text    userName    endo 
    Input Text    userEmail    endorodrigo19@gmail.com
    ${direccion}=     Set Variable    currentAddress
    Element Attribute Value Should Be   ${direccion}    placeholder    Current Address
    Input Text    currentAddress    Calle 90
    Input Text    permanentAddress    Calle 
    Execute Javascript    window.scrollTo(0,300)
    Sleep     ${t}
    Click Button    submit
    Sleep     ${t}
    Close Browser
