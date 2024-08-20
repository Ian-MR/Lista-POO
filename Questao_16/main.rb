require_relative "caixa"

class Parafuso; end
class Porca; end

caixa_parafusos = Caixa.new(Parafuso)
caixa_porcas = Caixa.new(Porca)

pa1 = Parafuso.new
po1 = Porca.new

caixa_parafusos.adicionar(pa1)
caixa_parafusos.adicionar(po1)
caixa_parafusos.adicionar(Parafuso.new)
caixa_parafusos.listar
caixa_parafusos.remover(pa1)
caixa_parafusos.listar


caixa_porcas.adicionar(pa1)
caixa_porcas.adicionar(po1)
caixa_porcas.adicionar(Parafuso.new)
caixa_porcas.listar
caixa_porcas.remover(po1)
caixa_porcas.listar
