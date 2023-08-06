*** Settings ***
Documentation    Sistema operativo
Library  SeleniumLibrary
Library  OperatingSystem

*** Variables ***
${url}


*** Test Cases ***
Crear un directorio
    [Documentation]    Crear carpeta
    [Tags]    test_crear carpeta
    OperatingSystem.Create Directory    carpeta2

Crear un archvio
    [Documentation]    Crear archivo
    [Tags]    test_crear_archivo
    OperatingSystem.Create File   carpeta1/archivo1.txt

Copiar un directorio dentro de un directorio
    [Documentation]    Copiar contenido entre carpetas
    [Tags]    test_copiar_carpeta
    OperatingSystem.Copy Directory    carpeta1    carpeta2

Mover un directorio
    [Documentation]    Mover contenido entre carpetas
    [Tags]    test_mover_carpeta
    OperatingSystem.Move File    carpeta2/Carpeta1/archivo1.txt    intermedio

Verificar si un directorio existe
    [Documentation]    Verificar si un directorio existe
    [Tags]    test_find
    ${bandera}    Run Keyword And Return Status    OperatingSystem.Should Exist    Intermedio
    Log To Console    ${bandera}
    Run Keyword If    '${bandera}'    Run Keyword    Log To Console    El directorio sí existe


        
    