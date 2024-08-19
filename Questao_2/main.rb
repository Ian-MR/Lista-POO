require_relative "conta_bancaria.rb"

c1 = ContaBancaria.new
c1.consultar_saldo
c1.sacar(10)
c1.consultar_saldo
c1.depositar(100)
c1.consultar_saldo
c1.sacar(99)
c1.consultar_saldo
#c1.saldo = 1000000 #Caso tente executar essa linha irá retornar um erro dizendo que 'saldo=' é um método privado.