*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Abrir Navegador Chrome
    Open Browser    https://demoqa.com/text-box    edge
    Maximize Browser Window
    Input Text    userName    endo 
    Input Text    userEmail    endorodrigo19@gmail.com
    Input Text    currentAddress    Calle 90
    Input Text    permanentAddress    Calle 
    Click Button    submit
    Sleep    5
    Close Browser
