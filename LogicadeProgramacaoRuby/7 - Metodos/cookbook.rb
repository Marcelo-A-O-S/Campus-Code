#O metodo é definido usando o comando def
def bem_vindo()
  puts "Bem vindo ao Cookbook, sua rede social de receitas"
end
def menu()
  puts "[1] Cadastrar uma receita"
  puts "[2] Ver todas as receitas"
  puts "[3] Sair"
  print "Escolha uma opção: "
  return gets.to_i()
end
def cadastrar_receita()
  puts "Digite o nome da receita: "
  nomereceita = gets.chomp()
  puts "Digite o tipo da receita: "
  tiporeceita = gets.chomp()
  puts
  puts "Receita #{nomereceita} cadastrada com sucesso"
  puts
  return { nome: nomereceita , tipo: tiporeceita}
end
def mostrar_receitas(receitas , quantidade)
  puts "================= Receitas Cadastradas ==============="
    receitas.each do |receita|
      puts "Nome da receita : #{receita[:nome]}"
      puts "Tipo de receita : #{receita[:tipo]}"
      puts "===================================================="
    end
    puts "Quantidade de receitas cadastradas: #{quantidade}"
end
bem_vindo()
receitas = []
opcao = menu()
while (opcao != 3)
  if(opcao == 1)
   receitas << cadastrar_receita()
  elsif(opcao == 2)
    mostrar_receitas(receitas, receitas.length)
  else
    puts "Opção invalida"
  end
  opcao = menu()
end
puts 'Obrigado por utilizar o projeto!'
