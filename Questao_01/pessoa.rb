class Pessoa
  attr_reader :nome, :idade

  def nome=(nome)
    @nome = nome.capitalize
  end

  def idade=(idade)
    if idade.is_a?(Numeric) && idade>0
      @idade = idade
    end
  end

  def infos
    puts "#{@nome} - #{@idade} #{@idade == 1 ? "ano" : "anos"}"
  end
end