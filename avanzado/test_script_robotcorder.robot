*** Settings ***
Documentation     A test suite with a single test for OrangeHRM
...               Created by hats' Robotcorder
Library    SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
OrangeHRM test
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Set Selenium Speed    3
    Input Text    xpath=//input[@name="username"]    endo
    Input Text    xpath=//input[@name="password"]    ***
    Click Element    xpath=//button[@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]
    Input Text    xpath=//input[@name="username"]    admin
    Input Text    xpath=//input[@name="password"]    admin123
    Click Element    xpath=//button[@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]
    Click Link    xpath=//a[@href="/web/index.php/admin/viewAdminModule"]
    Click Link    xpath=//a[@href="/web/index.php/leave/viewLeaveModule"]
    Click Element    xpath=//i[@class="oxd-icon bi-caret-down-fill oxd-userdropdown-icon"]
    Click Link    xpath=//a[@href="/web/index.php/auth/logout"]

    Close Browser