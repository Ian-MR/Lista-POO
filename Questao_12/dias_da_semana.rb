module DiasDaSemana
  SEGUNDA = :segunda
  TERCA = :terca
  QUARTA = :quarta
  QUINTA = :quinta
  SEXTA = :sexta
  SABADO = :sabado
  DOMINGO = :domingo

  def self.keys
    constants.map { | c | const_get(c) }
  end
end