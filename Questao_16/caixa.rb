class Caixa
  def initialize(t)
    if t.is_a?(Object)
      @tipo = t
      @caixa = Set.new
    else
      raise "Argumento inválido!"
    end
  end

  def adicionar(t)
    if t.class == @tipo
      @caixa.add(t)
      puts "#{@tipo} adicionado!"
    else
      puts "Objeto inválido!"
    end
  end

  def remover(t)
    @caixa.delete(t)
    puts "#{@tipo} removido!"
  end

  def listar
    puts @caixa.length
  end
end
