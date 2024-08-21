module Menu
  def self.titulo
    system "clear"
    puts "╭───────────────────────────────────╮".center(64)
    puts "│ Sistema de Gestão de Funcionários │".center(64)
    puts "╰───────────────────────────────────╯".center(64)
  end

  def self.opcao
    puts "Escolha uma Ação:"
    print "➤  "
    opcao = gets.chomp.to_i
  end

  def self.acoes
    Menu::titulo
    puts "╭───────────────────────────────────╮".center(64)
    puts "│           Menu de Ações           │".center(64)
    puts "╞═══════════════════════════════════╡".center(64)
    puts "│      1. Adicionar Funcionário     │".center(64)
    puts "│      2. Remover Funcionário       │".center(64)
    puts "│      3. Alterar Funcionário       │".center(64)
    puts "│      4. Listar Funcionarios       │".center(64)
    puts "│      5. Fechar Sistema            │".center(64)
    puts "╰───────────────────────────────────╯".center(64)
  end

  def self.adicionar
    Menu::titulo
    puts "╭───────────────────────────────────╮".center(64)
    puts "│       Adicionar Funcionário       │".center(64)
    puts "╞═══════════════════════════════════╡".center(64)
    puts "│           1. Adicionar            │".center(64)
    puts "│           2. Voltar               │".center(64)
    puts "╰───────────────────────────────────╯".center(64)
  end
  
  def self.remover
    Menu::titulo
    puts "╭───────────────────────────────────╮".center(64)
    puts "│        Remover Funcionário        │".center(64)
    puts "╞═══════════════════════════════════╡".center(64)
    puts "│            1. Remover             │".center(64)
    puts "│            2. Voltar              │".center(64)
    puts "╰───────────────────────────────────╯".center(64)
  end

  def self.alterar
    Menu::titulo
    puts "╭───────────────────────────────────╮".center(64)
    puts "│        Alterar Funcionário        │".center(64)
    puts "╞═══════════════════════════════════╡".center(64)
    puts "│            1. Alterar             │".center(64)
    puts "│            2. Voltar              │".center(64)
    puts "╰───────────────────────────────────╯".center(64)
  end

  def self.form_funcionario
    Menu::titulo
    puts "╭───────────────────────────────────╮".center(64)
    puts "│      Formulário Funcionário       │".center(64)
    puts "╰───────────────────────────────────╯".center(64)
    Menu::forms
  end

  def self.forms
    print "Nome ➤  "
    nome = gets.chomp
    print "Função ➤  "
    funcao = gets.chomp
    print "Salário ➤  "
    salario= gets.chomp.to_f
    return nome, salario, funcao
  end

  def self.info_funcionario(f)
    Menu::titulo
    Menu::cracha(f)
    Menu::confirma("Adicionar Outro Funcionário?", "Não (Menu)", "Sim", 13)
  end

  def self.cracha(f)
    if f == nil
      puts "Funcionário não encontrado!"
      return -1
    else
      puts "╭─────────────────────────────────────╮".center(64)
      puts "│          Crachá Funcionário         │".center(64)
      puts "│ ╭─────────╮                         │".center(64)
      puts "│ │    f    │  Nome: #{f.nome.ljust(17)}│".center(64)
      puts "│ │    o    │  Matrícula: #{f.matricula.ljust(12)}│".center(64)
      puts "│ │    t    │  Função: #{f.funcao.ljust(15)}│".center(64)
      puts "│ │    o    │  Salário: #{f.salario.to_s.ljust(14)}│".center(64)
      puts "│ ╰─────────╯                         │".center(64)
      puts "╰─────────────────────────────────────╯".center(64)
    end
  end

  def self.funcionarios(fs)
    Menu::titulo
    alt = false
    puts "┌───────────┬───────────────────┬────────────────────┬─────────────────────┐"
    puts "│ matricula │       nome        │       função       │       salário       │"
    puts "╞═══════════╪═══════════════════╪════════════════════╪═════════════════════╡"
    fs.each do |f|
      c = alt ? " " : "━"
      puts "│#{f[1].matricula.center(11,c)}│#{f[1].nome.center(19,c)}│#{f[1].funcao.center(20,c)}│#{f[1].salario.to_s.center(21,c)}│"
      alt = !alt
    end
    puts "└───────────┴───────────────────┴────────────────────┴─────────────────────┘"
  end

  def self.confirma(frase,op1,op2,c=0)
    op1 = "1. " + op1
    op2 = "2. " + op2
    puts "╭───────────────────────────────────╮".center(64)
    puts "│#{frase.center(35)}│".center(64)
    puts "╞═══════════════════════════════════╡".center(64)
    puts "│#{op1.center(35)}│".center(64)
    puts "│#{op2.ljust(c).center(35)}│".center(64)
    puts "╰───────────────────────────────────╯".center(64)
  end
end