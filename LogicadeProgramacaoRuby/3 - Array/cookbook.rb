puts "Bem vindo ao Cookbook, sua rede social de receitas"
#Inicialização de um array em ruby, semelhante a linguagem javascript
receitas = []
puts "Digite o nome da receita: "
nomereceita = gets.chomp()
#Para adição de valor a um array é utilizador o operador <<
#O operador adiciona na ultima posição do array receitas
receitas << nomereceita

puts "Receita #{nomereceita} cadastrada com sucesso"
