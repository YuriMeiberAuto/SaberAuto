*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Validar tela Comissões
    Wait Until Page Contains    text=Comissões
    Capture Page Screenshot
