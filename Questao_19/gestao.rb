require_relative "funcionario"
require_relative "Menu"

class Gestao
  include Menu
  def initialize()
    @funcionarios = Hash.new
  end

  def carregar_dados(dados)
    dados.each do |dado|
      f = Funcionario.new(dado[:nome], dado[:salario], dado[:funcao])
      @funcionarios.store(f.matricula,f)
    end
  end

  def iniciar
    menu()
  end

  def menu
    Menu::acoes
    $opcao = Menu::opcao
    case $opcao
    when 1
      adicionar()
    when 2
      remover()
    when 3
      alterar()
    when 4
      listar()
    when 5
      #encerra o programa
    else
      menu()
    end
  end

  def adicionar
    Menu::adicionar
    $opcao = Menu::opcao
    case $opcao
    when 1
      criar_funcionario()
    when 2
      menu()
    else
      adicionar()
    end
  end

  def remover
    Menu::remover
    $opcao = Menu::opcao
    case $opcao
    when 1
      remover_funcionario()
    when 2
      menu()
    else
      remover()
    end
  end

  def alterar
    Menu::alterar
    $opcao = Menu::opcao
    case $opcao
    when 1
      alterar_funcionario()
    when 2
      menu()
    else
      alterar()
    end
  end

  def listar
    Menu::funcionarios(@funcionarios)
    print "↵ voltar (enter)"
    $opcao = gets
    menu()
  end

  private 

  def criar_funcionario()
    nome, salario, funcao = Menu::form_funcionario
    f = Funcionario.new(nome, salario, funcao)
    @funcionarios.store(f.matricula,f)
    Menu::info_funcionario(f)
    $opcao = Menu::opcao
    case $opcao
    when 1
      menu()
    when 2
      criar_funcionario()
    else
      menu()
    end
  end

  def remover_funcionario()
    Menu::titulo
    puts "Informe a matricula do funcionário:"
    print "Matrícula ➤  "
    matricula = gets.chomp
    f = @funcionarios[matricula]
    if Menu::cracha(f) == -1
      $opcao = 1
    else
      Menu::confirma("Remover esse funcionário?", "Não", "Sim")
      $opcao = Menu::opcao
    end
    case $opcao
    when 1
      Menu::confirma("Informar outra matrícula?", "Não (Menu)", "Sim", 13)
      case $opcao = Menu::opcao
      when 1
        menu()
      else
        remover_funcionario()
      end
    when 2
      @funcionarios.delete(matricula)
      puts "Funcionário removido!"
      print "↵ voltar (enter)"
      $opcao = gets
      menu()
    else
      menu()
    end
  end

  def alterar_funcionario()
    Menu::titulo
    puts "Informe a matricula do funcionário:"
    print "Matrícula ➤  "
    matricula = gets.chomp
    f = @funcionarios[matricula]
    if Menu::cracha(f) == -1
      $opcao = 1
    else
      Menu::confirma("Alterar esse funcionário?", "Não", "Sim")
      $opcao = Menu::opcao
    end
    case $opcao
    when 1
      Menu::confirma("Informar outra matrícula?", "Não (Menu)", "Sim", 13)
      case $opcao = Menu::opcao
      when 1
        menu()
      else
        alterar_funcionario()
      end
    when 2
      puts "Campos em branco não serão alterados!"
      nome, salario, funcao = Menu::forms
      f.nome = nome if nome != ""
      f.salario = salario if salario != 0.0
      f.funcao = funcao if funcao != ""
      puts "Funcionário alterado!"
      Menu::cracha(f)
      print "↵ voltar (enter)"
      $opcao = gets
      menu()
    else
      menu()
    end
  end
end