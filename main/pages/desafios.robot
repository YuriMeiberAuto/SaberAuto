*** Settings ***
Library    SeleniumLibrary



*** Variables ***


*** Keywords ***
Validar tela Desafios
    Wait Until Page Contains    text=VER DESAFIO
    Capture Page Screenshot
