#language: pt

@alterar
Funcionalidade: Alteração de um livro
	Eu como uma aplicação cliente
	Quero buscar um livro específico
  	Para alterar suas informações


	Contexto: Ter credenciais de acesso a API

	Cenário: Realizar a alteração de um livro específico
		Quando enviar as informações do livro com id "10" através da API para alteração
    	Então a resposta conterá a mensagem "OK"
      	E o status code da resposta será 200
