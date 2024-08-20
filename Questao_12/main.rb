require_relative "agenda"

a1 = Agenda.new

a1.compromissos

a1.marcar_compromisso(DiasDaSemana::SEGUNDA, "Dentista", "14h")
a1.marcar_compromisso(DiasDaSemana::SEGUNDA, "Fazer compras", "16h")
a1.marcar_compromisso(DiasDaSemana::SEGUNDA, "Reunião", "10h")
a1.compromissos

a1.marcar_compromisso(DiasDaSemana::TERCA, "Cafeteria", "15h")
puts "--------"
a1.compromissos

a1.marcar_compromisso(DiasDaSemana::SEXTA, "Programar" , "9H")
puts "--------"
a1.compromissos(DiasDaSemana::SEXTA)