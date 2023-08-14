*** Settings ***
Library     Collections
Library     OperatingSystem
Library     ExcelLibrary
Library     requests

*** Variables ***
${JSON_File}     C:/Users/laa0304/Documents/Experimentos/introduccion_robot/Cuadratura/Poslog.json
${ExcelFile}    C:/Users/laa0304/Documents/Experimentos/introduccion_robot/Cuadratura/output.xlsx

*** Test Cases ***
Procesar JSON y Crear Excel
    ${json_}    Leer Archivo    ${JSON_File}
    ${_dict}    Evaluate    json.loads('''${json_}''')    json
    ${tax_info}    Set Variable    ${_dict['Tax'][0]}
    Log To Console    ${tax_info['TaxType']}
    Crear Excel y Añadir Datos    ${tax_info}
    Guardar Excel

*** Keywords ***
Leer Archivo
    [Documentation]    Lee el contenido de un archivo
    [Arguments]    ${file_path}
    ${content}    Get File    ${file_path}
    [Return]    ${content}

Crear Excel y Añadir Datos
    [Arguments]    ${tax_info}
    Open Excel Document	filename=${ExcelFile}	doc_id=docid
    Write Excel Cell    1    1    TaxType    Hoja1
    Write Excel Cell    1    2    Amount    Hoja1
    Write Excel Cell    1    3    BaseAmount    Hoja1
    Write Excel Cell    1    4    Percent    Hoja1
    Write Excel Cell    1    5    TaxGroupID    Hoja1
    Write Excel Cell    2    1    ${tax_info['TaxType']}    Hoja1
    Write Excel Cell    2    2    ${tax_info['Amount']}    Hoja1
    Write Excel Cell    2    3    ${tax_info['BaseAmount']}    Hoja1
    Write Excel Cell    2    4    ${tax_info['Percent']}    Hoja1
    Write Excel Cell    2    5    ${tax_info['TaxGroupID']}    Hoja1

Guardar Excel
    Save Excel Document    ${ExcelFile}
