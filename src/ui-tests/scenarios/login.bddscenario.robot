***Settings***
Library     SeleniumLibrary
Resource    ../pages/newuser.page.robot
### SETUP
Test Setup  Abrir navegador
### TEARDOWN
Test Teardown  Fechar navegador

***Test Cases***


Scenario 01: new user
    Dado que estou na tela inicial da aplicação
    Quando gerar um novo usuário válido
    Então devo receber a mensagem de usuário criado com sucesso
