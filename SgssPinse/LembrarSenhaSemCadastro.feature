#language: pt-br
#date: 26/06/2020
#autor: Jamile Agnes

Funcionalidade: Lembrar senha - sem cadastro na SEFAZ
    Como usuário sem cadastrado na base da SEFAZ
    Quero tentar solicitar a frase de lembrança de senha
    Para recuperar senha de acesso ao site da SEFAZ

    Contexto:
        Dado que acesso a aplicação PINSE
        Quando acesso a opção Via Termo > Lembrar Senha
        Então o sistema exibe campo para preenchimento de login de usuário e botão Avançar
			
			Cenário:  Obter Lembrança de senha, para usuários que não tenham cadastro nas bases da SEFAZ, utilizando Inscrição Estadual - IE.
			Dado informo no campo login do usuário a @IE, válida e sem cadastro nas bases da SEFAZ
			Quando clico no botão Avançar
			Então o sistema exibe a mensagem "Os dados informados não foram encontrados na base de dados da SEFAZ"

            Cenário:  Obter Lembrança de senha, para usuários que não tenham cadastro nas bases da SEFAZ, utilizando CPF.
			Dado informo no campo login do usuário a @CPF, válida e sem cadastro nas bases da SEFAZ
			Quando clico no botão Avançar
			Então o sistema exibe a mensagem "Os dados informados não foram encontrados na base de dados da SEFAZ"

			Cenário:  Obter Lembrança de senha, para usuários que não tenham cadastro nas bases da SEFAZ, utilizando CNPJ.
			Dado informo no campo login do usuário a @CNPJ, válida e sem cadastro nas bases da SEFAZ
			Quando clico no botão Avançar
			Então o sistema exibe a mensagem "Os dados informados não foram encontrados na base de dados da SEFAZ"

			Cenário:  Obter Lembrança de senha, para usuários que não tenham cadastro nas bases da SEFAZ, utilizando CRC.
			Dado informo no campo login do usuário a @CRC, válida e sem cadastro nas bases da SEFAZ
			Quando clico no botão Avançar
			Então o sistema exibe a mensagem "Os dados informados não foram encontrados na base de dados da SEFAZ"