

Quando("quando envio as informações do livro a API") do
  @resposta = LivrosApi.new.criar_livro(MASSA['criar_livro'])
end

Quando("buscar pelo livro {string} através da API") do |id|
  @resposta = LivrosApi.new.ler_livro(MASSA['ler_livro']['id'])
end

Quando("enviar as informações do livro com id {string} através da API para alteração") do |id|
  @resposta = LivrosApi.new.alterar_livro(MASSA['alterar_livro']['id'], MASSA['alterar_livro'])
end

Então("a resposta conterá a mensagem {string}") do |mensagem|
  expect(@resposta.message) == (mensagem)
end

Então("o status code da resposta será {int}") do |status_code|
  expect(@resposta.code) == (status_code)
end


