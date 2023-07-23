*** Settings ***
Documentation    Trabajando con multiples navegadores switch
Library        SeleniumLibrary

*** Variables ***
${url}    https://demoqa.com/
${navegador}    edge

*** Test Cases ***
Trabajando con multipler navegadores al mismo tiempos
    Switch Browser    1
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Title Should Be    DEMOQA
    Set Selenium Implicit Wait    10
    Set Selenium Speed    1

    ${titulo}    Get Title
    Log To Console    ${titulo}


Abriendo otro navegador como chrome
    Switch Browser    2
    Open Browser    https://sp.booking.com/index.html?aid=1535086&label=esco-edge-ntp-topsites-curate-ana    edge
    Maximize Browser Window
    ${titulo2}    Get Title
    Log To Console    ${titulo2}