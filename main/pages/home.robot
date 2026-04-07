*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BOTAO_SACAR_AGORA}     //a[@class='indicaestacio-card-btn btn__sacar_agora']
${BOTAO_DESAFIOS}        //a[@class='indicaestacio-card-btn btn__desafios']
${BOTAO_FAQ}            //a[@class='duvidas-button btn__faq']
${BOTAO_REGULAMENTO}     //a[@class='duvidas-button btn__regulamento1']

*** Keywords ***
Validar mensagem de login
    Wait Until Page Contains    text=Boas-vindas!
    Capture Page Screenshot

Clicar Botão Sacar Agora
    Scroll Element Into View   locator=${BOTAO_SACAR_AGORA}
    Sleep    2s
    Click Element   locator=${BOTAO_SACAR_AGORA}

Clicar Botão Desafios
    Scroll Element Into View   locator=${BOTAO_DESAFIOS}
    Click Element    locator=${BOTAO_DESAFIOS}

Clicar Botão FAQ
    Scroll Element Into View   locator=${BOTAO_FAQ}
    Click Element     locator=${BOTAO_FAQ}

Clicar Botão Regulamento
    Scroll Element Into View   locator=${BOTAO_REGULAMENTO}
    Click Element     locator=${BOTAO_REGULAMENTO}
