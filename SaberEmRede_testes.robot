*** Settings ***
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador
Resource         main/pages/SaberEmRede.resources.robot  

*** Variables ***
${nome}    joao


*** Test Cases ***

Caso de teste 01 - Realizar login no site de afiliados do saber em rede com login invalido e senha valida
    [Documentation]  Realizar login invalido
    [Tags]           Login
    Acessar o campo E-mail e preencher com um login invalido 
    Acessar o campo senha e preenhcer com uma senha valida
    Clicar no botão entrar
    Validar retorno da mensagem de erro

Caso de teste 02 - Realizar login no site de afiliados do saber em rede com Login valido e senha invalida
    [Documentation]  Realizar login invalido
    [Tags]           Login
    Acessar o campo E-mail e preencher com um login valida
    Acessar o campo senha e preenhcer com uma senha invalida
    Acessar no botão entrar
    Garantir retorno da mensagem de erro 

 Caso de teste 03 - Realizar login no site de afiliados do saber em rede com senha e e-mail valido
     [Documentation]  Realizar login valido
     [Tags]           Login
     Acessar o campo E-mail e preencher com um e-mail valido
     Acessar o campo senha e preenhcer com uma senha valida
     Clicar no botão entrar
     Validar retorno da mensagem login bem vindo

# Caso de teste 04 - Realizar login no site de afiliados do saber em rede com senha e e-mail valido
#     [Documentation]  Realizar login valido
#     [Tags]           Login
#     Acessar o campo E-mail e preencher com um e-mail valido
#     Acessar o campo senha e preenhcer com uma senha valida
#     Clicar no botão entrar
#     Validar retorno da mensagem login "bem vindo"

# Caso de teste 05 - Realizar login no site de afiliados do saber em rede com senha e e-mail valido
#     [Documentation]  Realizar login valido
#     [Tags]           Login
#     Acessar o campo E-mail e preencher com um e-mail valido
#     Acessar o campo senha e preenhcer com uma senha valida
#     Clicar no botão entrar
#     Validar retorno da mensagem login "bem vindo"

# Caso de teste 06 - Realizar login no site de afiliados do saber em rede com senha e e-mail valido
#     [Documentation]  Realizar login valido
#     [Tags]           Login
#     Acessar o campo E-mail e preencher com um e-mail valido
#     Acessar o campo senha e preenhcer com uma senha valida
#     Clicar no botão entrar
#     Validar retorno da mensagem login "bem vindo"

# Caso de teste 07 - Realizar login no site de afiliados do saber em rede com senha e e-mail valido
#     [Documentation]  Realizar login valido
#     [Tags]           Login
#     Acessar o campo E-mail e preencher com um e-mail valido
#     Acessar o campo senha e preenhcer com uma senha valida
#     Clicar no botão entrar
#     Validar retorno da mensagem login "bem vindo"

# Caso de teste 08 - Realizar login no site de afiliados do saber em rede com senha e e-mail valido
#     [Documentation]  Realizar login valido
#     [Tags]           Login
#     Acessar o campo E-mail e preencher com um e-mail valido
#     Acessar o campo senha e preenhcer com uma senha valida
#     Clicar no botão entrar
#     Validar retorno da mensagem login "bem vindo"

# Caso de teste 09 - Realizar login no site de afiliados do saber em rede com senha e e-mail valido
#     [Documentation]  Realizar login valido
#     [Tags]           Login
#     Acessar o campo E-mail e preencher com um e-mail valido
#     Acessar o campo senha e preenhcer com uma senha valida
#     Clicar no botão entrar
#     Validar retorno da mensagem login "bem vindo"

# Caso de teste 10 - Realizar login no site de afiliados do saber em rede com senha e e-mail valido
#     [Documentation]  Realizar login valido
#     [Tags]           Login
#     Acessar o campo E-mail e preencher com um e-mail valido
#     Acessar o campo senha e preenhcer com uma senha valida
#     Clicar no botão entrar
#     Validar retorno da mensagem login "bem vindo"