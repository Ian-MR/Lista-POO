require_relative "veiculo.rb"

class Carro < Veiculo
  attr_accessor :placa, :chassi

  def initialize(marca, modelo, placa, chassi)
    @marca = marca.capitalize
    @modelo = modelo.capitalize
    @placa = placa.upcase
    @chassi = chassi.upcase
  end

  def ligar
    puts "VRUMMMMM!!!!"
  end
end