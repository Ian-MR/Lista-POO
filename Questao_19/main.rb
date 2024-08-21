require_relative "gestao"

dados = [
  {
    nome: "Ian",
    salario: 3000,
    funcao: "Programador"
  },
  {
    nome: "Robson",
    salario: 2000,
    funcao: "Secretário"
  },
  {
    nome: "Amanda",
    salario: 5000,
    funcao: "Diretora"
  },
  {
    nome: "Allana",
    salario: 3000,
    funcao: "designer"
  }
]

sgf = Gestao.new

sgf.carregar_dados(dados)

sgf.iniciar
