puts "Bem vindo ao Cookbook, sua rede social de receitas"
receitas = []
#Estrutura de repetição while em ruby
while (true)
  puts "Digite o nome da receita: "
  nomereceita = gets.chomp()
  receitas << nomereceita
  puts
  puts "Receita #{nomereceita} cadastrada com sucesso"
  puts
  puts "================= Receitas Cadastradas ==============="
  #O comando abaixo retorna o mesmo resultado que as estruturas de repetição, a linguagem ruby é inteligente o suficiente para entender o que é necessário, e prosseguir com a ação
  #puts receitas
  # comando for em ruby
  #for receita in receitas do
  #  puts "Receita : #{receita}"
  #  puts "===================================================="
  #end
  #forma de interar dados de un array em ruby
  receitas.each do |receita|
    puts "Receita : #{receita}"
    puts "===================================================="
  end
end

