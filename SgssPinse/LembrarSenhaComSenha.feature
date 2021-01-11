#language: pt-br
#date: 24/06/2020
#autor: Jamile Agnes

Funcionalidade: Lembrar senha - com senha gerada anteriormente
    Como usuário cadastrado na base da SEFAZ
    Quero solicitar a frase de lembrança de senha
    Para recuperar senha de acesso aos sistemas

    Contexto:
        Dado que acesso a aplicação PINSE
        Quando acesso a opção Via Termo > Lembrar Senha
        Então o sistema exibe campo para preenchimento de login de usuário e botão Avançar
			
			Cenário:  Obter lembrança de senha, utilizando a Inscrição Estadual - IE
			Dado informo no campo login do usuário a @IE, válida e com senha gerada anteriormente
			Quando clico no botão Avançar
			E o sistema exibe, em modo leitura, os dados cadastrais relacionados ao usuário
			E verifico os dados cadastrais exibidos
			E clico no botão Confirmar
			Então o sistema envia o lembrete de senha para o e-mail cadastrado do usuário e exibe a mensagem em tela: "E-mail enviado com sucesso!"
			E confirmo recebimento do lembrete de senha enviado pelo sistema (remetente: webmaster@sefaz.ba.gov.br) na caixa de entrada de e-mails


			Cenário:  Obter lembrança de senha, utilizando CPF
			Dado informo no campo login do usuário o @CPF, válida e com senha gerada anteriormente
			Quando clico no botão Avançar
			E o sistema exibe, em modo leitura, os dados cadastrais relacionados ao usuário
			E verifico os dados cadastrais exibidos
			E clico no botão Confirmar
			Então o sistema envia o lembrete de senha para o e-mail cadastrado do usuário e exibe a mensagem em tela: "E-mail enviado com sucesso!"
			E confirmo recebimento do lembrete de senha enviado pelo sistema (remetente: webmaster@sefaz.ba.gov.br) na caixa de entrada de e-mails

	
			Cenário:  Obter lembrança de senha, utilizando CNPJ
			Dado informo no campo login do usuário o @CNPJ, válida e com senha gerada anteriormente
			Quando clico no botão Avançar
			E o sistema exibe, em modo leitura, os dados cadastrais relacionados ao usuário
			E verifico os dados cadastrais exibidos
			E clico no botão Confirmar
			Então o sistema envia o lembrete de senha para o e-mail cadastrado do usuário e exibe a mensagem em tela: "E-mail enviado com sucesso!"
			E confirmo recebimento do lembrete de senha enviado pelo sistema (remetente: webmaster@sefaz.ba.gov.br) na caixa de entrada de e-mails

	
			Cenário:  Obter lembrança de senha, utilizando CRC
			Dado informo no campo login do usuário o @CRC, válida e com senha gerada anteriormente
			Quando clico no botão Avançar
			E o sistema exibe, em modo leitura, os dados cadastrais relacionados ao usuário
			E verifico os dados cadastrais exibidos
			E clico no botão Confirmar
			Então o sistema envia o lembrete de senha para o e-mail cadastrado do usuário e exibe a mensagem em tela: "E-mail enviado com sucesso!"
			E confirmo recebimento do lembrete de senha enviado pelo sistema (remetente: webmaster@sefaz.ba.gov.br) na caixa de entrada de e-mails
