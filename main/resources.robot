*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}            https://sandbox.afiliado.saberemrede.net/ 
${CAMPOEMAIL}    //input[@placeholder='E-mail ou telefone']
${CAMPOSENHA}    (//input[@placeholder='Senha'])[1]
${ENTRAR}        (//button[contains(text(),'ENTRAR')])[1]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=Chrome
    Maximize Browser Window
    Go To    ${URL} 

Fechar o navegador
    Close Browser    