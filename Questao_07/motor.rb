class Motor
  attr_accessor :pontencia, :cilindros

  def initialize(pontencia, cilindros)
    @pontencia = pontencia.downcase
    @cilindros = cilindros.upcase
  end

  def emitir_som
    puts "VRUUUMM!!!"
  end
end