#language: pt

@criar
Funcionalidade: Criação de um livro
	Eu como uma aplicação cliente
	Quero criar um livro
	Para que haja um novo livro 


	Contexto: Ter credenciais de acesso a API

	Cenário: Criar livro
		Quando quando envio as informações do livro a API
    	Então a resposta conterá a mensagem "OK"
      	E o status code da resposta será 200