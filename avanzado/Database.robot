*** Settings ***
Documentation    practica con bas de datos real
Library   SeleniumLibrary
Library   DatabaseLibrary
Library  OperatingSystem

Suite Setup    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpass}    ${dbhost}    ${dbport}
Suite Teardown    Disconnect From Database


*** Variables ***
${url}    https://demoqa.com/menu/
${navegador}    chrome
${images}    "C:\\Users\\endor\\OneDrive\\Documentos\\introduccion_robot\\img"
${dbname}    robot
${dbuser}    endo
${dbpass}    12345
${dbhost}    127.0.0.1
${dbport}    3306

*** Test Cases ***
Crear una tabla de base de datos
    [Documentation]    Crear una buena tabla en DB
    [Tags]    test_crear_tabla
    ${crear}    Execute Sql String    CREATE TABLE Customer (id int(11) NOT NULL, name varchar(40), ap varchar(40))
    Log To Console    ${crear}
    Should Be Equal As Strings    ${crear}    None
