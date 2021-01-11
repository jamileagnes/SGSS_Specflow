#language: pt-br
#date: 07/07/2020
#autor: Jamile Agnes

Funcionalidade: Gerar novo termo para Contador - Com cadastro ativo
    Como usuário com cadastro na base da SEFAZ, com cadastro ativo
    Quero solicitar a frase de lembrança de senha
    Para tentar recuperar senha de acesso aos sistemas

    Contexto:
        Dado que acesso a aplicação PINSE
        Quando acesso a opção Solicitação
        Então o sistema exibe tela com opções de usuários
        E campos para preenchimento de dados equivalente a escolha do tipo de usuário
        E botão Avançar

            Cenário: Gerar novos termos para Contador, utilizando CRC e CPF, que já possua cadastro na SEFAZ
            Dado seleciono a opção Contador
            Quando os campos CRC, UF, Situação e Tipo com dados válidos
            E informo o CPF que já possua usuário internet ou senha ativa
            E clico no botão Avançar
            Então O sistema exibe a mensagem: “Usuário já existe no banco de dados da SEFAZ. ”

            Cenário: Gerar novos termos para Contador, utilizando CRC e CNPJ, que já possua cadastro na SEFAZ
            Dado seleciono a opção Contador
            Quando os campos CRC, UF, Situação e Tipo com dados válidos
            E informo o CNPJ que já possua usuário internet ou senha ativa
            E clico no botão Avançar
            Então O sistema exibe a mensagem: “Usuário já existe no banco de dados da SEFAZ. ”