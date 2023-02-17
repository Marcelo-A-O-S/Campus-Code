puts "Bem vindo ao Cookbook, sua rede social de receitas"
receitas = []
puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"
#O print é semelhante ao puts, sua função é mostrar algo na tela do console, a diferença é que puts quebra uma linha, e print não
print "Escolha uma opção: "
#O metodo to_i() serve para converter um valo para um inteiro
opcao = gets.to_i()
while (opcao != 3)
  if(opcao == 1)
  puts "Digite o nome da receita: "
  nomereceita = gets.chomp()
  receitas << nomereceita
  puts
  puts "Receita #{nomereceita} cadastrada com sucesso"
  puts
  elsif(opcao == 2)
    puts "================= Receitas Cadastradas ==============="
    receitas.each do |receita|
      puts "Receita : #{receita}"
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

