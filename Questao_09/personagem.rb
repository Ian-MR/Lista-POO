require_relative "desenhavel"
require_relative "movimentavel"

class Personagem
  include Desenhavel
  include Movimentavel

  def initialize(nome)
    @nome = nome
  end
end