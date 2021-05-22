#language:pt

Funcionalidade: Relembrar username
    Para que eu possa recuperar meu nome de usuario
    Sabendo o meu email cadastrado
    Posso recuperar minha conta informando o email

Cenario: Usuário obtido com sucesso
    Dado que eu estou na página inicial
    Quando clico em relembrar username
    Entao insiro o email "email@valido"
    E clico em email me