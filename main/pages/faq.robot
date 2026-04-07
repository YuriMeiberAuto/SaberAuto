*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${conteudo}      FAQ

*** Keywords ***
Validar tela FAQ
    ${aba_principal}=    Get Window Handles
    ${abas}=    Get Window Handles
    Switch Window    ${abas}[1]
    Wait Until Page Contains    ${conteudo}    timeout=10s
    Capture Page Screenshot
    