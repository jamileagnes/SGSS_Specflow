#language: pt-br
#date: 26/06/2020
#autor: Jamile Agnes

Funcionalidade: Lembrar senha - campos vazios
    Como usuário sem utilizaçãod e dados
    Quero tentar solicitar a frase de lembrança de senha
    Para recuperar senha de acesso ao site da SEFAZ

    Contexto:
        Dado que acesso a aplicação PINSE
        Quando acesso a opção Via Termo > Lembrar Senha
        Então o sistema exibe campo para preenchimento de login de usuário e botão Avançar
			
			Cenário: Obter Lembrança de senha, campos vazios.
			Dado mantenho o campo Login do usuário sem preenchimento
			Quando clico no botão Avançar
			Então o sistema exibe mensagem "Favor informar o login do usuário"