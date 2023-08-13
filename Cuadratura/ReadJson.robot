*** Settings ***
Library     RPA.Excel
Library     Collections
Library     OperatingSystem
Library     RequestsLibrary

*** Variables ***
${JSON_File}     C:/Users/laa0304/Documents/Experimentos/introduccion_robot/Cuadratura/Poslog.json
${ExcelFile}    output.xlsx

*** Test Cases ***
Procesar JSON y Crear Excel
    ${json_data}    Read File    ${JSON_File}
    ${data_dict}    Evaluate    json.loads('''${json_data}''')    json
    ${tax_info}    Set Variable    ${data_dict['Tax'][0]}
    Crear Hoja de Excel
    Añadir Datos a Excel

*** Keywords ***
Crear Hoja de Excel
    Create Excel    ${ExcelFile}

Añadir Datos a Excel
    Open Excel    ${ExcelFile}
    Add Header Row    TaxType    Amount    BaseAmount    Percent    TaxGroupID
    Add Row    ${tax_info['TaxType']}    ${tax_info['Amount']}    ${tax_info['BaseAmount']}    ${tax_info['Percent']}    ${tax_info['TaxGroupID']}
    Save Excel
    Close Excel
