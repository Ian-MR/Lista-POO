require_relative "carro.rb"

c1 = Carro.new("ford", "mustang", "ghi-8754", "6bfjk53ds82782964")
puts "Marca: #{c1.marca}, Modelo: #{c1.modelo}, Placa: #{c1.placa}, Chassi: #{c1.chassi}"
c1.ligar