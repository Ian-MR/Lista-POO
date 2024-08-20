require_relative "escola.rb"
require_relative "aluno.rb"

a1 = Aluno.new("Carlos", "11224857",7.5)
a2 = Aluno.new("Joana", "87542689",9.0)
a3 = Aluno.new("José", "52367458",8.78)
a4 = Aluno.new("Francisco", "75412589",4.2)

e1 = Escola.new(a1,a2)
e1.alunos
puts "-------------------"
e1.adicionar_alunos(a3,a4)
e1.alunos