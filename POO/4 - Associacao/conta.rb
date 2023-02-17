#O atributo require_relative recarrega o arguivo pelo caminho informado, fazendo a associação
require_relative 'cliente'
class Conta
  attr_reader :numero, :titular
  attr_accessor :saldo
  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
  end
  def sacar(valor)
    if(@saldo < valor)
      puts "O valor é muito alto para o valor que pode ser sacado!"
      return false
    else
      self.saldo -= valor
      return true
    end
  end
  def depositar(valor)
    if(valor < 0)
      puts "Não é possivel adicionar um valor negativo"
    else
      self.saldo += valor
    end
  end
  def transferir(conta_destino, valor)
    result = sacar(valor)
    if(result == true)
      conta_destino.depositar(valor)
    else
      puts "Não foi possivel concluir a transferencia!"
    end
  end
end
