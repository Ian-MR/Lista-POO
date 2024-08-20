class Aluno
  attr_accessor :nome, :matricula, :nota
  def initialize(nome, matricula, nota)
    @nome = nome
    @matricula = matricula
    @nota = nota
  end
end