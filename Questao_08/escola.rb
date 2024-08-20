require_relative "aluno.rb"

class Escola 
  def initialize(*alunos)
    @alunos = []
    if alunos.size != 0
      alunos.each do |aluno|
        @alunos.push(aluno)
      end
    end
  end

  def alunos
    @alunos.each do |aluno|
      puts "#{aluno.matricula} - #{aluno.nome} : #{aluno.nota}"
    end
  end

  def adicionar_alunos(*alunos)
    if alunos.size != 0
      alunos.each do |aluno|
        @alunos.push(aluno)
      end
    end
  end
end
