#language: pt-br
#date: 26/06/2020
#autor: Jamile Agnes

Funcionalidade: Lembrar senha - dados inválidos
    Como usuário utilizando dados inválidos
    Quero tentar solicitar a frase de lembrança de senha
    Para recuperar senha de acesso ao site da SEFAZ

    Contexto:
        Dado que acesso a aplicação PINSE
        Quando acesso a opção Via Termo > Lembrar Senha
        Então o sistema exibe campo para preenchimento de login de usuário e botão Avançar
			
			Cenário: Obter Lembrança de senha, dados inválidos.
			Dado informo no campo login do usuário dados inválidos
			Quando clico no botão Avançar
			Então o sistema exibe a mensagem "Os dados informados não foram encontrados na base de dados da SEFAZ"