*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CAMPOEMAIL}    //input[@placeholder='E-mail ou telefone']
${CAMPOSENHA}    (//input[@placeholder='Senha'])[1]
${ENTRAR}        (//button[contains(text(),'ENTRAR')])[1]

*** Keywords ***
Digitar Login
    [Arguments]    ${login}
    Input Text    locator=${CAMPOEMAIL}    text=${login}

Digitar Senha
    [Arguments]    ${senha}
    Input Text    locator=${CAMPOSENHA}    text=${senha}

Clicar no botão entrar
    Click Element     locator=${ENTRAR}

Validar retorno da mensagem de erro
    Wait Until Page Contains    text=Login e/ou senha inválidos
    Capture Page Screenshot

