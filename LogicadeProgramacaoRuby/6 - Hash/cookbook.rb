puts "Bem vindo ao Cookbook, sua rede social de receitas"
receitas = []
puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"
print "Escolha uma opção: "

opcao = gets.to_i()
while (opcao != 3)
  if(opcao == 1)
  puts "Digite o nome da receita: "
  nomereceita = gets.chomp()
  puts "Digite o tipo da receita: "
  tiporeceita = gets.chomp()
  #O hash em ruby é semelhante a adicionar um objeto a rum array em javascript
  #Com o hash, vc cria atributos de um objeto
  receitas << { nome: nomereceita , tipo: tiporeceita}
  puts
  puts "Receita #{nomereceita} cadastrada com sucesso"
  puts
  elsif(opcao == 2)
    puts "================= Receitas Cadastradas ==============="
    receitas.each do |receita|
      #O acesso a propriedade do hash é utilizando [:atributo]
      puts "Nome da receita : #{receita[:nome]}"
      puts "Tipo de receita : #{receita[:tipo]}"
      puts "===================================================="
    end
  else
    puts "Opção invalida"
  end
  puts "[1] Cadastrar uma receita"
  puts "[2] Ver todas as receitas"
  puts "[3] Sair"
  print "Escolha uma opção: "
end
puts 'Obrigado por utilizar o projeto!'


