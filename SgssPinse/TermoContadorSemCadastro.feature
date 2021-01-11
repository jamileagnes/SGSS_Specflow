#language: pt-br
#date: 07/07/2020
#autor: Jamile Agnes

Funcionalidade: Gerar novo termo para Contador - sem cadastro
    Como usuário sem cadastro na base da SEFAZ
    Quero solicitar a frase de lembrança de senha
    Para tentar recuperar senha de acesso aos sistemas

    Contexto:
        Dado que acesso a aplicação PINSE
        Quando acesso a opção Solicitação
        Então o sistema exibe tela com opções de usuários
        E campos para preenchimento de dados equivalente a escolha do tipo de usuário
        E botão Avançar

            Cenário: Gerar novos termos para Contador, utilizando CRC e CPF, sem cadastro na SEFAZ
            Dado seleciono a opção Contador
            Quando preencho os campos CRC, UF, Situação e Tipo com dados válidos
            E informo o CPF de Contador sem cadastro anterior na SEFAZ
            E Clico em Avançar
            Então O sistema verifica que o conjunto de filtros informados para consulta não corresponde a nenhum Contador cadastrado" e exibe a mensagem: “Usuário informado não consta na base de dados da SEFAZ ou não está ligado a nenhum contribuinte do Estado. ”

            Cenário: Gerar novos termos para Contador, utilizando CRC e CNPJ, sem cadastro na SEFAZ
            Dado seleciono a opção Contador
            Quando preencho os campos CRC, UF, Situação e Tipo com dados válidos
            E informo o CNPJ de Contador sem cadastro anterior na SEFAZ
            E Clico em Avançar
            Então O sistema verifica que o conjunto de filtros informados para consulta não corresponde a nenhum Contador cadastrado" e exibe a mensagem: “Usuário informado não consta na base de dados da SEFAZ ou não está ligado a nenhum contribuinte do Estado. ”