#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    Contexto: Página principal
        Dado que eu acesso a página principal

    @logout
    Cenario: Usuário deve ser autorizado

        Quando eu faço login com "diego.silva" e "abacoaba"
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem "diego.silva"

    Esquema do Cenario: Tentativa de acesso
        Quando eu faço login com "<usuario>" e "<senha>"
        Então devo ver a seguinte mensagem "<alerta>"

        Exemplos:
            |usuario        |senha      |alerta                         |    
            |diego.silva    |123456     |Senha inválida.                |
            |diego          |abacoaba   |Usuário não cadastrado.        |
            |               |123456     |O campo login é obrigatório.   |
            |diego.silva    |           |O campo senha é obrigatório.   |