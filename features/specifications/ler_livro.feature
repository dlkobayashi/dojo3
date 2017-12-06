#language: pt

@ler
Funcionalidade: Leitura de um livro
	Eu como uma aplicação cliente
	Quero buscar os livros cadastrados
  	Para listá-los em uma determinada tel


	Contexto: Ter credenciais de acesso a API

	Cenário: Realizar a leitura de um livro específico
		Quando buscar pelo livro "5" através da API
    	Então a resposta conterá a mensagem "OK"
      	E o status code da resposta será 200