#language: pt-br
#date: 07/07/2020
#autor: Jamile Agnes

Funcionalidade: Gerar novo termo para Contador - Com cadastro cancelado
    Como usuário com cadastro na base da SEFAZ, com cadastro cancelado
    Quero solicitar a frase de lembrança de senha
    Para tentar recuperar senha de acesso aos sistemas

    Contexto:
        Dado que acesso a aplicação PINSE
        Quando acesso a opção Solicitação
        Então o sistema exibe tela com opções de usuários
        E campos para preenchimento de dados equivalente a escolha do tipo de usuário
        E botão Avançar

            Cenário: Gerar novos termos para Contador utilizando identificação profissional - CRC válidos, existente na SEFAZ e cancelado.
            Dado seleciono a opção Contador
            Quando preencho os campos CRC, UF, Situação e Tipo, com dados válidos porém com cadastro cancelado
            E Clico em Avançar
            E o sistema exibe os dados do Contador e Endereço para confirmação
            E Clico na confirmação dos dados
            Então O sistema apresenta mensagem “Contador encontra-se como cancelado na base da SEFAZ”.

            Cenário: Gerar novos termos para Contador utilizando CPF válido, existente na SEFAZ e cancelado.
            Dado seleciono a opção Contador
            Quando preencho o campo CPF com dados válidos, porém com cadastro cancelado
            E Clico em Avançar
            E o sistema exibe os dados do Contador e Endereço para confirmação
            E Clico na confirmação dos dados
            Então O sistema apresenta mensagem “Contador encontra-se como cancelado na base da SEFAZ”.

            Cenário: Gerar novos termos para Contador utilizando CNPJ válido, existente na SEFAZ e cancelado.
            Dado seleciono a opção Contador
            Quando preencho o campo CNPJ com dados válidos, porém com cadastro cancelado
            E Clico em Avançar
            E o sistema exibe os dados do Contador e Endereço para confirmação
            E Clico na confirmação dos dados
            Então O sistema apresenta mensagem “Contador encontra-se como cancelado na base da SEFAZ”.