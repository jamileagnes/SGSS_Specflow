#language: pt-br
#date: 07/07/2020
#autor: Jamile Agnes

Funcionalidade: Gerar novo termo para Contador - Com dados inválidos
    Como usuário com cadastro na base da SEFAZ, com dados inválidos
    Quero solicitar a frase de lembrança de senha
    Para tentar recuperar senha de acesso aos sistemas

    Contexto:
        Dado que acesso a aplicação PINSE
        Quando acesso a opção Solicitação
        Então o sistema exibe tela com opções de usuários
        E campos para preenchimento de dados equivalente a escolha do tipo de usuário
        E botão Avançar

            Cenário: Gerar novos termos para Contador utilizando identificação profissional - CRC inválido.
            Dado seleciono a opção Contador
            Quando preencho os campos CRC, UF, Situação e Tipo com dados inválidos
            E Clico em Avançar
            Então O sistema apresenta mensagem “Informe um CRC válido”.

            Cenário: Gerar novos termos para Contador utilizando CPF inválido.
            Dado seleciono a opção Contador
            Quando preencho o campo CPF com dados inválidos
            E Clico em Avançar
            Então O sistema apresenta mensagem “Informe um CPF válido”.

            Cenário: Gerar novos termos para Contador utilizando CNPJ inválido.
            Dado seleciono a opção Contador
            Quando preencho o campo CNPJ com dados inválidos
            E Clico em Avançar
            Então O sistema apresenta mensagem “Informe um CNPJ válido”.
