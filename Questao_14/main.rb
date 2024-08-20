require_relative "biblioteca"

l1 = Livro.new("Calculo 1", "James Stewart")

b1 = Biblioteca.new(l1)
b1.adicionar_livros(Livro.new("Álgebra Linear com Aplicações ", "Howard Anton"), Livro.new("Organizacao estruturada de computadores", "Andrew S. Tanenbaum"))
puts "---------"
b1.listar_livros

puts "---------"
b1.remover_livros(l1)

puts "---------"
b1.listar_livros