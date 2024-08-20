require_relative "forma_geometrica"

class Quadrado < FormaGeometrica
  def initialize(lado)
    if lado.is_a?(Numeric) || lado > 0
      @lado = lado
    else
      raise "O valor #{lado} não é válido!"
    end
  end

  def calcularArea()
     puts "Área Quadrado: #{@lado**2}"
  end
end