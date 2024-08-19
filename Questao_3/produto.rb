class Produto
  attr_accessor :nome, :preco, :quantidade
  def initialize(nome, preco, quantidade)
    @nome = nome.capitalize
    if preco > 0
      @preco = preco
    else
      raise "O preço #{preco} não é um valor válido!"
    end
    if quantidade.is_a?(Integer)  && quantidade >= 0
      @quantidade = quantidade
    else
      raise "A quantidade #{quantidade} não é um valor válido!"
    end
  end
end