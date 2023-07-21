*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testpages.herokuapp.com/styled/alerts/alert-test.html
${navegador}    chrome

*** Test Cases ***
Hacer clic sobre alert de paginas
    Open Browser    ${url}    ${navegador}
    Maximize Browser Window
    Title Should Be    Test Page For JavaScript Alerts
    Set Selenium Implicit Wait    10

    Click Button    alertexamples
    Sleep    3
    #Alert Should Be Present    I am an alert box!
    Sleep    3
    Handle Alert    accept

    Click Button    confirmexample
    Sleep    3
    #Alert Should Be Present    I am a confirm alert
    Sleep    3
    Handle Alert    accept

    Click Button    confirmexample
    Sleep    3
    #Alert Should Be Present    I am a confirm alert
    Sleep    3
    Handle Alert    dismiss

    Click Button     promptexample
    Sleep    3
    Alert Should Be Present    I prompt you


