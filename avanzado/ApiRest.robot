*** Settings ***
Documentation    Prueba real con un servicio rest
Library   SeleniumLibrary
Library   RequestsLibrary
Library    Collections

*** Variables ***
${url}    https://pokeapi.co/

*** Test Cases ***
Realizar una prueba de consultar de una api
    [Documentation]    Metodo de consulta
    [Tags]    test_consulta
    Create Session    pagina_api    ${url}  
    ${response}    get request    pagina_api    api/v2/pokemon/ditto
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

