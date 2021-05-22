#language:pt

Funcionalidade: login
    Para que eu possa comentar e usar todas as funcionalidades
    Sendo um usuário
    Posso acessar o sistema com meu usuario e senha previamente cadastrados

    Contexto: Página principal
        Dado que eu acesso a página de login

    Cenario: Usuario logado com sucesso
        Quando faço o login com "usernamevalido" e "senhavalida"
        Entao devo ser redirecionado para a pagina inicial
    
    Esquema do Cenario: Tentativa de login invalida
        Quando faço o login com "<username>" e "<senha>"
        Entao devo ver a seguinte mensagem "<alerta>"

        Exemplos:
        |username|senha|alerta|
        |trainingtest|123456789|Incorrect username or password|
        |trainingtest3|123456|Incorrect username or password|
        |trainingtest3@gmail.com|123456789|Username must be between 3 and 20 characters|
        |trainingtest3@hotmail.com|123456789|Username must be between 3 and 20 characters|
        |trainingtest3.io|xx44674fd4f65d4f65d4fd46fd646df|Incorrect username or password|

    #Exemplo sem placeholder e matriz de exemplos
    #Cenario: Login invalido
    #    Quando faço o login com "usernameinvalido" e "senhavalida"
     #   Entao devo ver a seguinte mensagem "Incorrect username or password"
    #@temp
    #Cenario: Senha invalida
     #   Quando faço o login com "usernamevalido" e "senhainvalida"
     #   Entao devo ver a seguinte mensagem "Incorrect username or password"