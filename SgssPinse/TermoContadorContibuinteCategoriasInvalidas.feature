#language: pt-br
#date: 07/07/2020
#autor: Jamile Agnes

Funcionalidade: Gerar novo termo para Contador - Com Contribuinte associado/representado ativo em categorias inválidas
    Como usuário com cadastro na base da SEFAZ, com Contribuinte associado/representado ativo em categorias inválidas
    Quero solicitar a frase de lembrança de senha
    Para tentar recuperar senha de acesso aos sistemas

    Contexto:
        Dado que acesso a aplicação PINSE
        Quando acesso a opção Solicitação
        Então o sistema exibe tela com opções de usuários
        E campos para preenchimento de dados equivalente a escolha do tipo de usuário
        E botão Avançar

            Cenário: Gerar novos termos para Contador utilizando identificação profissional - CRC válidos, existentes na SEFAZ, com contribuinte associado/representado ativo em categorias inválidas.
            Dado seleciono a opção Contador
            Quando preencho os campos CRC, UF, Situação e Tipo com dados válidos, associado a contribuinte ativo em categorias inválidas
            E Clico em Avançar
            E o sistema exibe os dados do Contador e Endereço para confirmação
            E Clico na confirmação dos dados
            Então O sistema apresenta mensagem “Contribuintes associados a contador não estão cadastrados em categorias válidas na base da SEFAZ”.

            Cenário: Gerar novos termos para Contador utilizando CPF válido, existentes na SEFAZ, com contribuinte associado/representado ativo em categorias inválidas.
            Dado seleciono a opção Contador
            Quando preencho o campo CPF com dados válidos, associado a contribuinte ativo em categorias inválidas
            E Clico em Avançar
            E o sistema exibe os dados do Contador e Endereço para confirmação
            E Clico na confirmação dos dados
            Então O sistema apresenta mensagem “Contribuintes associados a contador não estão cadastrados em categorias válidas na base da SEFAZ”.

            Cenário: Gerar novos termos para Contador utilizando CNPJ válido, existentes na SEFAZ, com contribuinte associado/representado ativo em categorias inválidas.
            Dado seleciono a opção Contador
            Quando preencho o campo CNPJ com dados válidos, associado a contribuinte ativo em categorias inválidas
            E Clico em Avançar
            E o sistema exibe os dados do Contador e Endereço para confirmação
            E Clico na confirmação dos dados
            Então O sistema apresenta mensagem “Contribuintes associados a contador não estão cadastrados em categorias válidas na base da SEFAZ”.