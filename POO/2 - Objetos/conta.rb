class Conta
  #Esse atributo attr_reader permite apenas leitura em atributos declarados
  attr_reader :numero, :saldo
  #Esse atributo attr_writer permite apenas escrita em atriburos declados
  attr_writer :titular
  #O atributo attr_acessor permite acesso de leitura e escrita a aum atributo declarado
  attr_accessor
  #O metodo "initialize" é o metodo responsavel por inicializar o classe, ele é chamado usando o metodo de inicialização "new()"
  def initialize(numero, titular, saldo)
    #Para inicializar variaveis é utilizado o @ que indica para o ruby, que é uma variavel
    @numero = numero
    @titular = titular
    @saldo = saldo
  end
  def numero()
    @numero
  end
  def saldo()
    @saldo
  end
  #Metodo de atribuição(escrita) de m atributo de um objeto
  #def titular = (outro_titular)
  def mostrar_saldo()
    puts "O saldo do titular #{@titular} é igual a #{@saldo} !"
  end
  def info_conta()
    puts "Numero da Conta: #{@numero}"
    puts "Nome titular: #{@titular}"
    puts "Saldo da conta: #{@saldo}"
  end
end
