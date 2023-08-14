*** Settings ***
Library     ExcelLibrary

*** Variables ***
${ExcelFile}    C:/Users/laa0304/Documents/Experimentos/introduccion_robot/Cuadratura/output.xlsx

*** Test Cases ***
Trabajando con archivos de excel 
    Crear un archivo de excel el la misma ruta    ${ExcelFile}
    Obtener el numero de las hojas del excel
    Escribir en un archivo de excel

*** Keywords ***
Crear un archivo de excel el la misma ruta
    [Arguments]    ${ExcelFile}
    Create Excel Document    ${ExcelFile}

Obtener el numero de las hojas del excel
    ${sheets}	Get List Sheet Names
    Log To Console    	${sheets}

Escribir en un archivo de excel
    Open Excel Document	filename=${ExcelFile}	doc_id=docid
    #Open Excel Document    C:/Users/endor/OneDrive/Documentos/introduccion_robot/Cuadratura/output.xlsx
    Write Excel Cell    1    1    ENDO    Hoja1
    Save Excel Document    filename=${ExcelFile}
    