require_relative "conta_bancaria.rb"

c1 = ContaBancaria.new
c1.consultar_saldo
c1.sacar(10)
c1.consultar_saldo
c1.depositar(100)
c1.consultar_saldo
c1.sacar(99)
c1.consultar_saldo