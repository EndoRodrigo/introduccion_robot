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
${rutascript}    C:/Users/endor/OneDrive/Documentos/introduccion_robot/keyworks/InsertQuery.sql
${dbname}    robot
${dbuser}    endo
${dbpass}    12345
${dbhost}    127.0.0.1
${dbport}    3306

*** Test Cases ***
Crear una tabla de base de datos
    [Documentation]    Crear una buena tabla en DB
    [Tags]    test_crear_table
    ${crear}    Execute Sql String    CREATE TABLE Customer (id int(11) NOT NULL, name varchar(40), ap varchar(40))
    Log To Console    ${crear}
    Should Be Equal As Strings    ${crear}    None

Realizando un insert sobre una tabla
    [Documentation]    Insertando registros en tablas
    [Tags]    test_insert_table
    ${insertar}    Execute Sql String    INSERT INTO customer VALUES (1,'Endo Rodrigo','Rodriguez Ariza')
    Log To Console    ${insertar}
    Should Be Equal As Strings    ${insertar}    None

Realizando un insert de registros sobre unscript
    [Documentation]    Insertando registros en tablas con archivos .sql
    [Tags]    test_insert_table_script
    ${insertarFile}    Execute Sql Script    ${rutascript}
    Log To Console    ${insertarFile}
    Should Be Equal As Strings    ${insertarFile}    None

Verificar si un registro existe en DB
    [Documentation]    Verificar un registro
    [Tags]    test_consilt
    Check If Exists In Database    SELECT name FROM customer WHERE name='Andrea'
    
Verificar si un registro no existe en DB
    [Documentation]    Verificar un registro
    [Tags]    test_consilt_dos
    Check If Not Exists In Database    SELECT name FROM customer WHERE name='GOKU'
    
Verificar que na tbla exista en DB
    [Documentation]    Buscar una tabla
    [Tags]    test_exist_table
    ${existe}    Table Must Exist    customer
    Log To Console    ${existe}