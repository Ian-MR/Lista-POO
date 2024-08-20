require_relative "dias_da_semana"

class Agenda
  include DiasDaSemana

  def marcar_compromisso(dia_semana, compromisso, horario)
    @compromissos = {} if @compromissos == nil
    @compromissos[dia_semana] = {} if @compromissos[dia_semana] == nil
    @compromissos[dia_semana].store(compromisso, horario)
  end

  def compromissos(*dias)
    if @compromissos
      case dias.size
      when 0
        DiasDaSemana.keys.sort.each do | dia |
          if @compromissos[dia]
            puts dia.upcase
            @compromissos[dia].sort_by{ | c, h | h}.each do | c, h |
              puts "#{c.capitalize} - #{h}"
            end
          end
        end
      else
        dias.sort.each do | dia |
          puts dia.upcase
          if @compromissos[dia]
            @compromissos[dia].sort_by{ | c, h | h}.each do | c, h |
              puts "#{c.capitalize} - #{h}"
            end
          end
        end
      end
    else
      puts "Não há nada marcado!"
    end
  end
end