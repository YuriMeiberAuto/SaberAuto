*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${conteudo_esperado}      REGULAMENTO
${pdf}                     INDICAÊ
*** Keywords ***
Validar tela Regulamentos
    ${aba_principal}=    Get Window Handles
    ${abas}=    Get Window Handles
    Switch Window    ${abas}[1]
    Sleep    3s
    Capture Page Screenshot
    

