require_relative "calculadora.rb"

calc = Calculadora.new

calc.adicionar(1)
calc.adicionar(1,2)
calc.adicionar(1,2,3)
calc.adicionar(1,2,3,4)

calc.subtrair(1)
calc.subtrair(2,1)
calc.subtrair(3,2,1)
calc.subtrair(4,3,2,1)

calc.multiplicar(1)
calc.multiplicar(2,3)
calc.multiplicar(3,2,1)
calc.multiplicar(5.5,3,2,1)

calc.dividir(1)
calc.dividir(10,5)
calc.dividir(30,6,5)
calc.dividir(1024,4,2,2)