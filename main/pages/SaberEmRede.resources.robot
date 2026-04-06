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
Fechar o navegador
    Close Browser    

#Caso de teste 01 - Realizar login no site de afiliados do saber em rede com login invalido e senha valida
Acessar o campo E-mail e preencher com um login invalido
    Go To    url=https://sandbox.afiliado.saberemrede.net/
    Input Text    locator=${CAMPOEMAIL}    text=yuri.araujooo

Acessar o campo senha e preenhcer com uma senha valida
    Input Text    locator=${CAMPOSENHA}    text=Windows@10..

Clicar no botão entrar
    Click Element     locator=${ENTRAR}

Validar retorno da mensagem de erro
    Wait Until Page Contains    text=Login e/ou senha inválidos

#Caso de teste 02 - Realizar login no site de afiliados do saber em rede com Login valido e senha invalida
Acessar o campo E-mail e preencher com um login valida
    Go To    url=https://sandbox.afiliado.saberemrede.net/
    Input Text    locator=${CAMPOEMAIL}    text=yuri.araujo

Acessar o campo senha e preenhcer com uma senha invalida
    Input Text    locator=${CAMPOSENHA}    text=Windows@10.

Acessar no botão entrar
    Click Element     locator=${ENTRAR}
    
Garantir retorno da mensagem de erro
    Wait Until Page Contains    text=Login e/ou senha inválidos

# Caso de teste 03 - Realizar login no site de afiliados do saber em rede com senha e e-mail valido
Acessar o campo E-mail e preencher com um login valida
    Go To    url=https://sandbox.afiliado.saberemrede.net/
    Input Text    locator=${CAMPOEMAIL}    text=yuri.araujo
Acessar o campo senha e preenhcer com uma senha invalida
    Input Text    locator=${CAMPOSENHA}    text=Windows@10.
Acessar no botão entrar
    Click Element     locator=${ENTRAR}