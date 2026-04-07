*** Settings ***
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador
Resource         ../main/pages/login.robot  
Variables        ../main/variables/variables.yaml  
resource         ../main/resources.robot
Resource         ../main/pages/home.robot
Resource    ../main/pages/comissoes.robot
Resource    ../main/pages/desafios.robot
Resource    ../main/pages/regulamentos.robot
Resource    ../main/pages/faq.robot


*** Variables ***
${nome}    joao
${login_invalido}    mmmm
${senha_invalida}    asjodfbauf

*** Test Cases ***

Caso de teste 01 - Realizar login no site de afiliados do saber em rede com login invalido e senha valida
    [Documentation]  Realizar login invalido
    [Tags]           Login
    Digitar Login    login=${login_invalido}
    Digitar Senha    senha=${senha_valida}
    Clicar no botão entrar
    Validar retorno da mensagem de erro     

Caso de teste 02 - Realizar login no site de afiliados do saber em rede com Login valido e senha invalida
    [Documentation]  Realizar login invalido
    [Tags]           Login
    Digitar Login    login=${login_valido}
    Digitar Senha    senha=${senha_invalida}
    Clicar no botão entrar
    Validar retorno da mensagem de erro     

 Caso de teste 03 - Realizar login no site de afiliados do saber em rede com senha e e-mail valido
    [Documentation]  Realizar login valido
    [Tags]           Login
    Digitar Login    login=${login_valido}
    Digitar Senha    senha=${senha_valida}
    Clicar no botão entrar
    Validar mensagem de login 

Caso de teste 04 - Clicar em Sacar Agora e validar tela de comissões
    [Documentation]  Entrar na página Sacar Agora
    [Tags]           Login
    Digitar Login    login=${login_valido}
    Digitar Senha    senha=${senha_valida}
    Clicar no botão entrar
    Validar mensagem de login 
    Clicar Botão Sacar Agora
    Validar tela Comissões

Caso de teste 05 - Clicar em Desafios e validar tela de desafios
    [Documentation]  Entrar na página Desafios
    [Tags]           Login
    Digitar Login    login=${login_valido}
    Digitar Senha    senha=${senha_valida}
    Clicar no botão entrar
    Validar mensagem de login 
    Clicar Botão Desafios
    Validar tela Desafios

Caso de teste 06 - Clicar em FAQ
    [Documentation]  Entrar na página Desafios
    [Tags]           Login
    Digitar Login    login=${login_valido}
    Digitar Senha    senha=${senha_valida}
    Clicar no botão entrar
    Validar mensagem de login 
    Clicar Botão FAQ
    Validar tela FAQ

Caso de teste 07 - Clicar em Regulamento
    [Documentation]  Entrar na página Desafios
    [Tags]           Login
    Digitar Login    login=${login_valido}
    Digitar Senha    senha=${senha_valida}
    Clicar no botão entrar
    Validar mensagem de login 
    Clicar Botão Regulamento
    Validar tela Regulamentos


