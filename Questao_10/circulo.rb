require_relative "forma_geometrica"

class Circulo < FormaGeometrica
  def initialize(raio)
    if raio.is_a?(Numeric) || raio > 0
      @raio = raio
    else
      raise "O valor #{raio} não é válido!"
    end
  end

  def calcularArea()
     puts "Área Circulo: #{2*Math::PI*@raio}"
  end
end