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
    else
      #O self é propriedade que relaciona ao proprio objeto, que no caso nessa demonstração é a propria classe Conta
      self.saldo -= valor
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
    sacar(valor)
    conta_destino.depositar(valor)
  end
end
