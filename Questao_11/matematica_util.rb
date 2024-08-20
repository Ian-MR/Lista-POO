class MatematicaUtil
  def self.quadrado(valor)
    puts valor**2
  end

  def self.cubo(valor)
    puts valor**3
  end

  def self.raiz_quadrada(valor)
    if valor < 0
      raise "Não é possível encontrar raiz de um numero negativo!"
    else
      puts Math.sqrt(valor)
    end
  end
end
