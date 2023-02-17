#Criar um metodo de buscar receita
CADASTRAR_RECEITA = 1
MOSTRAR_RECEITAS = 2
BUSCAR_RECEITA = 3
SAIR = 4
def bem_vindo()
  puts "Bem vindo ao Cookbook, sua rede social de receitas"
end
def menu()
  puts "[#{CADASTRAR_RECEITA}] Cadastrar uma receita"
  puts "[#{MOSTRAR_RECEITAS}] Ver todas as receitas"
  puts "[#{BUSCAR_RECEITA}] Buscar receita"
  puts "[#{SAIR}] Sair"
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
def buscar_receita(receitas)
  puts "Digite o nome da receita que deseja procurar:"
  busca = gets.chomp()
  for receita in receitas do
    if(busca == receita[:nome])
      puts "=========== Receita encontrada ==============="
      puts "Nome da Receita: #{receita[:nome]}"
      puts "Tipo de receita: #{receita[:tipo]}"
    end
  end

end
bem_vindo()
receitas = []
opcao = menu()
while (opcao != SAIR)
  if(opcao == CADASTRAR_RECEITA)
   receitas << cadastrar_receita()
  elsif(opcao == MOSTRAR_RECEITAS)
    mostrar_receitas(receitas, receitas.length)
  elsif(opcao == BUSCAR_RECEITA)
    buscar_receita(receitas)
  else
    puts "Opção invalida"
  end
  opcao = menu()
end
puts 'Obrigado por utilizar o projeto!'
