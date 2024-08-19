class ContaBancaria
  attr_accessor :saldo
  def initialize
    @saldo = 0
  end
  def depositar(valor)
    if valor > 0
      @saldo += valor
      puts "Depósito relaizado com sucesso!"
      end
  end
  def sacar(valor)
    if valor > 0
      if valor <= @saldo
        @saldo -= valor
        puts "Saque realizado com sucesso!"
      else
        puts "Saldo insuficiente!"
      end
    end
  end
  def consultar_saldo
    puts "O saldo da sua conta é: #{@saldo}"
  end
end