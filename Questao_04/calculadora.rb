class Calculadora
  
  def adicionar(*args)
    case args.size
    when 2
      puts "Adicionar 2 parâmetros"
      puts "#{args[0]+args[1]}"
    when 3
      puts "Adicionar 3 parâmetros"
      puts "#{args[0]+args[1]+args[2]}"
    when 4
      puts "Adicionar 4 parâmetros"
      puts "#{args[0]+args[1]+args[2]+args[3]}"
    else
      puts "Número de parametros não definido!"
    end
  end

  def subtrair(*args)
    case args.size
    when 2
      puts "Subtrair 2 parâmetros"
      puts "#{args[0]-args[1]}"
    when 3
      puts "Subtrair 3 parâmetros"
      puts "#{args[0]-args[1]-args[2]}"
    when 4
      puts "Subtrair 4 parâmetros"
      puts "#{args[0]-args[1]-args[2]-args[3]}"
    else
      puts "Número de parametros não definido!"
    end
  end

  def multiplicar(*args)
    case args.size
    when 2
      puts "Multiplicar 2 parâmetros"
      puts "#{args[0]*args[1]}"
    when 3
      puts "Multiplicar 3 parâmetros"
      puts "#{args[0]*args[1]*args[2]}"
    when 4
      puts "Multiplicar 4 parâmetros"
      puts "#{args[0]*args[1]*args[2]*args[3]}"
    else
      puts "Número de parametros não definido!"
    end
  end

  def dividir(*args)
    case args.size
    when 2
      if args[1] == 0
        raise "Não é possivel dividir por zero!"
      end
      puts "Dividir 2 parâmetros"
      puts "#{args[0]/args[1]}"
    when 3
      if args[1] == 0 || args[2] == 0
        raise "Não é possivel dividir por zero!"
      end
      puts "Dividir 3 parâmetros"
      puts "#{args[0]/args[1]/args[2]}"
    when 4
      if args[1] == 0 || args[2] == 0 || args[3] == 0
        raise "Não é possivel dividir por zero!"
      end
      puts "Dividir 4 parâmetros"
      puts "#{args[0]/args[1]/args[2]/args[3]}"
    else
      puts "Número de parametros não definido!"
    end
  end
end
  