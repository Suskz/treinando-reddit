#language:pt

Funcionalidade: Relembrar senha
    Para que eu possa recuperar minha conta
    Sabendo o meu username e email cadastrado
    Posso resetar minha senha

Cenario: Senha resetada com sucesso
    Dado que eu acesso a página principal
    Quando clico em relembrar password
    Entao insiro o username "usernamevalido" e o email "email@valido"
    E clico em reset password