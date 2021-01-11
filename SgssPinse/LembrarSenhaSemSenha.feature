#language: pt-br
#date: 25/06/2020
#autor: Jamile Agnes

Funcionalidade: Lembrar senha - sem senha gerada anteriormente
    Como usuário com cadastro na base da SEFAZ, sem senha gerada anteriormente
    Quero solicitar a frase de lembrança de senha
    Para tentar recuperar senha de acesso aos sistemas

    Contexto:
        Dado que acesso a aplicação PINSE
        Quando acesso a opção Via Termo > Lembrar Senha
        Então o sistema exibe campo para preenchimento de login de usuário e botão Avançar

            Cenário: Obter Lembrança de senha, utilizando Inscrição Estadual - IE, sem senha gerada anteriormente.
		    Dado informo no campo login do usuário a @IE, válida e sem senha gerada anteriormente
		    Quando clico no botão Avançar
		    E o sistema exibe mensagem "Usuário não possui senha cadastrada" e opção de geração de senha.
		    E solicito termo de geração de senha na respectiva opção
		    Então sistema permite geração de Termo, com sucesso.

            Cenário: Obter Lembrança de senha, utilizando CPF, sem senha gerada anteriormente.
		    Dado informo no campo login do usuário a @CPF, válido e sem senha gerada anteriormente
		    Quando clico no botão Avançar
		    E o sistema exibe mensagem "Usuário não possui senha cadastrada" e opção de geração de senha.
		    E solicito termo de geração de senha na respectiva opção
		    Então sistema permite geração de Termo, com sucesso. 

			Cenário: Obter Lembrança de senha, utilizando CNPJ, sem senha gerada anteriormente.
		    Dado informo no campo login do usuário a @CNPJ, válido e sem senha gerada anteriormente
		    Quando clico no botão Avançar
		    E o sistema exibe mensagem "Usuário não possui senha cadastrada" e opção de geração de senha.
		    E solicito termo de geração de senha na respectiva opção
		    Então sistema permite geração de Termo, com sucesso. 

			Cenário: Obter Lembrança de senha, utilizando CRC, sem senha gerada anteriormente.
		    Dado informo no campo login do usuário a @CRC, válido e sem senha gerada anteriormente
		    Quando clico no botão Avançar
		    E o sistema exibe mensagem "Usuário não possui senha cadastrada" e opção de geração de senha.
		    E solicito termo de geração de senha na respectiva opção
		    Então sistema permite geração de Termo, com sucesso. 