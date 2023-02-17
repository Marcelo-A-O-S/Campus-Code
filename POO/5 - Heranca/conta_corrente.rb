require_relative 'conta'
#Os atributos e dados de uma classe pode ser herdado usando o operador <
class ContaCorrente < Conta
  attr_accessor :limite
  def initialize( numero, titular, saldo, limite)
    #O metodo super se refere a classe pai, que na demonstração é a classe "Conta"
    #Esse metodo é utilizado para rodar metodos da classe pai(Seu metodo initialize) nesta propria classe de ContaCorrente
    super(numero, titular, saldo)
    @limite = limite
  end
  def sacar(valor)
    if(saldo + limite) >= valor
      self.saldo -= valor
    else
      puts "Não foi possivel realizar o saque!"
    end
  end
end
