require_relative "motor.rb"

class Carro 
  attr_accessor :marca, :modelo, :placa

  def initialize(marca, modelo, placa, pontencia, cilindros)
    @marca = marca.capitalize
    @modelo = modelo.capitalize
    @placa = placa.upcase
    @motor = Motor.new(pontencia, cilindros)
  end

  def ligar
    @motor.emitir_som
  end

  def motor
    puts "Motor #{@motor.cilindros} com #{@motor.pontencia}"
  end
end