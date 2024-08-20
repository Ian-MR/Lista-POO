class Livro
  attr_accessor :titulo, :autor
  def initialize(titulo, autor)
    @titulo = titulo.capitalize
    @autor = autor.capitalize
  end

  def infos
    puts "#{@titulo} - #{@autor}"
  end
end