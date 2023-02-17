puts "Bem vindo ao Cookbook, sua rede social de receitas"

puts "Digite o nome da receita: "
#As variaveis em ruby, recebem atribuição de valores, podemos concluir que o ruby é uma linguagem dinamica
#o metodo chomp() limpa caracteres especiais da captura do metodo gets
nomereceita = gets.chomp()

puts "Receita #{nomereceita} cadastrada com sucesso"
