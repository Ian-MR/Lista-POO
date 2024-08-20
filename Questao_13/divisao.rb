class Divisao
  def self.dividir_inteiros(a, b)
    if a.is_a?(Integer) && b.is_a?(Integer)
      begin 
        result = a / b
      rescue ZeroDivisionError
        puts "Não é possivel dividir por zero"
      else
        puts result
      end
    else
      puts "Os numeros devem ser inteiros"
    end
  end
end