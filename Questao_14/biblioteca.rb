require_relative "livro"

class Biblioteca
  def initialize(*livros)
    @livros = Set.new
    if livros.size > 0
      livros.each do | livro | 
        @livros.add(livro)
      end
    end
  end

  def adicionar_livros(*livros)
    livros.each do | livro | 
      @livros.add(livro)
    end
    puts "livro(s) adicionado(s)!"
  end

  def remover_livros(*livros)
    livros.each do | livro | 
      @livros.delete(livro)
    end
    puts "livro(s) removido(s)!"
  end

  def listar_livros
    @livros.each { | livro | livro.infos}
  end
end