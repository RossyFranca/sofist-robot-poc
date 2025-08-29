***Settings***
Library    SeleniumLibrary
Resource    ../pages/default.page.robot
Resource    ../pages/newuser.page.robot


***Keywords***
Dado que estou na tela inicial da aplicação
    Abrir navegador

Quando gerar um novo usuário válido


Então devo receber a mensagem de usuário criado com sucesso
