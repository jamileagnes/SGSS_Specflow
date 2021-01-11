#language: pt-br
#date: 07/07/2020
#autor: Jamile Agnes

Funcionalidade: Gerar novo termo para Contador - Com campos vazios
    Como usuário com cadastro na base da SEFAZ, com campos vazios
    Quero solicitar a frase de lembrança de senha
    Para tentar recuperar senha de acesso aos sistemas

    Contexto:
        Dado que acesso a aplicação PINSE
        Quando acesso a opção Solicitação
        Então o sistema exibe tela com opções de usuários
        E campos para preenchimento de dados equivalente a escolha do tipo de usuário
        E botão Avançar

            Cenário: Gerar novos termos para Contador com campos vazios.
            Dado seleciono a opção Contador
            Quando mantenho os campos vazios
            E Clico em Avançar
            Então O sistema exibe mensagem: “Favor informar o CNPJ ou CPF do contador”.