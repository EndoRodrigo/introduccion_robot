*** Settings ***
Library     Collections
Library     OperatingSystem
Library     ExcelLibrary

*** Variables ***
${JSON_File}     C:/Users/endor/OneDrive/Documentos/introduccion_robot/Cuadratura/Poslog.json
${ExcelFile}    C:/Users/endor/OneDrive/Documentos/introduccion_robot/Cuadratura/output.xlsx

*** Test Cases ***
Procesar JSON y Crear Excel
    ${json_data}    Leer Archivo    ${JSON_File}
    ${data_dict}    Evaluate    json.loads('''${json_data}''')    json
    ${tax_info}    Set Variable    ${data_dict['Tax'][0]}
    Crear Excel y Añadir Datos
    Guardar Excel

*** Keywords ***
Leer Archivo
    [Documentation]    Lee el contenido de un archivo
    [Arguments]    ${file_path}
    ${content}    Get File    ${file_path}
    [Return]    ${content}

Crear Excel y Añadir Datos
    Create Excel Document    ${ExcelFile}
    
    Write Excel Cell    Data    1    1    TaxType
    Write Excel Cell    Data    1    2    Amount
    Write Excel Cell    Data    1    3    BaseAmount
    Write Excel Cell    Data    1    4    Percent
    Write Excel Cell    Data    1    5    TaxGroupID
    Write Excel Cell    Data    2    1    ${tax_info['TaxType']}
    Write Excel Cell    Data    2    2    ${tax_info['Amount']}
    Write Excel Cell    Data    2    3    ${tax_info['BaseAmount']}
    Write Excel Cell    Data    2    4    ${tax_info['Percent']}
    Write Excel Cell    Data    2    5    ${tax_info['TaxGroupID']}

Guardar Excel
    Save Excel Document    ${ExcelFile}
