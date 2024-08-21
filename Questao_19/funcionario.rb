class Funcionario
  attr_accessor :nome, :salario, :funcao, :matricula
  @@matriculas = Set.new
  def initialize(nome,salario,funcao)
    @nome = nome
    @salario = salario
    @funcao = funcao
    @matricula = gerar_matricula
  end

  def self.matriculas
     puts @@matriculas
  end

  private

  def gerar_matricula
    mat = rand(1000000).to_s.rjust(6,"0")
    while @@matriculas === mat
      mat = rand(1000000).to_s.rjust(6,"0")
    end
    @@matriculas.add(mat)
    return mat
  end
end