*** Settings ***
Documentation    Prueba real con un servicio rest
Library   SeleniumLibrary
Library   RequestsLibrary
Library    Collections

*** Variables ***
${url}    https://reqres.in/
${Complemento}    api/users?page=2

*** Test Cases ***
Realizar una prueba de GET de una api
    [Documentation]    Metodo de consulta
    [Tags]    test_consulta
    Create Session    pagina_api    ${url}    ${Complemento}
    ${response}    GET On Session    pagina_api    
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

    #Validaciones
    ${status}    Convert To String    ${response.status_code}
    Should Be Equal    ${status}    200

    ${body}    Convert To String    ${response.content}
    Should Contain    ${body}    michael.lawson@reqres.in

Realizar un registro usando el metodo POS
    [Documentation]    Metodo de insertar
    [Tags]    test_insert
    Create Session    pagina_api    ${url}
    ${body}    Create Dictionary    name=Endo    job=Sistemas
    ${header}    Create Dictionary    Content-Type=application/json    charset=utf-8
    ${response}    POST On Session    pagina_api    /api/users    json=${body}    headers=${header}
    Log To Console    ${response}
    Log To Console    ${response.status_code}
    Log To Console    ${response.text}
    Log To Console    ${response.headers}

Realizar un registro usando el metodo put
    [Documentation]    Metodo de actualizar
    [Tags]    test_update
    Create Session    pagina_api    ${url}
    ${body}    Create Dictionary    name=Endo    job=Sistemas
    ${header}    Create Dictionary    Content-Type=application/json    charset=utf-8
    ${response}    PUT On Session    pagina_api    /api/users/2    json=${body}    headers=${header}
    Log    Response Content: ${response.text}

Realizar una eliminacin usando el metodo delete
    [Documentation]    Metodo de actualizar
    [Tags]    test_update
    Create Session    pagina_api    ${url}
    ${response}    DELETE On Session    pagina_api    /api/users/2
    Log    Response Content: ${response.text}

