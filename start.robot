*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}        Chrome
${simples}        Noesis Academy
@{dias_da_semana}    DOMINGO SEGUNDA TERCA QUARTA QUINTA SEXTA SABADO
&{cadastro}       nome="Marcos" email=marcos.carvalho@noesis.pt

*** Test Cases ***
Logar com User e password corretos
    Open Browser    ${LOGIN URL}    ${BROWSER}    options=add_argument("--start-maximized")
    Wait Until Element Is Enabled    //input[@name="username"]
    Input Text      //input[@name="username"]   Admin
    Input Text      //input[@name="password"]   admin123
    Click Button    //button[contains(.,"Login")]
    Sleep   5
    Page Should Contain Image    //img[@src="/web/images/orangehrm-logo.png?v=1721393199309"]

Analisando Variaveis
    Log To Console    Noesis Academy    