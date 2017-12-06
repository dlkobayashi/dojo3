class LivrosApi
  include HTTParty

  base_uri ENVIRONMENT['api']
  format :json

  def criar_livro(body)
    self.class.post("/api/Books", :body => body.to_json)
  end

  def ler_livro(id=nil)
    self.class.get("/api/Books/#{id}")
  end

  def alterar_livro(id, body)
    self.class.put("/api/Books/#{id}", :body => body.to_json)
  end
end