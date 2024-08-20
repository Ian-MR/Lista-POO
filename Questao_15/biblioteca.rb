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

  def livros
    livros = @livros.to_a
    index = 0
    puts "Total de Livros: #{@livros.length}"
    puts "Livro: #{index+1}"
    puts "Titulo: #{livros[index].titulo}"
    puts "Autor: #{livros[index].autor}"
    puts "Escolha uma ação( ante | prox | sair ): "
    acao = gets.chomp.to_s
    while acao != "sair" do
      system "clear"
      puts "Total de Livros: #{@livros.length}"
      case acao
      when "prox"
        index = (index+1) % @livros.length
      when "ante"
        index = index - 1 == -1 ? @livros.length - 1 : index - 1
      end
      puts "Livro: #{index+1}"
      puts "Titulo: #{livros[index].titulo}"
      puts "Autor: #{livros[index].autor}"
      puts "Escolha uma ação( ante| prox | sair ): "
      acao = gets.chomp.to_s
    end
  end
end