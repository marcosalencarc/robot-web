*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}        Chrome

*** Test Cases ***
Acessar um site
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Sleep   10
    Input Text      //input[@name="username"]   Admin
    Input Text      //input[@name="password"]   admin123
    Click Button    //button[@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]
    Sleep   10