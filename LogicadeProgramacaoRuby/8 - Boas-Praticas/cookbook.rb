#Usar constantes para valores imutaveis
#Pelo padrão, constantes sao sempre declaradas em maiusculas
CADASTRAR_RECEITA = 1
VISUALIZAR_RECEITA = 2
SAIR = 3
def bem_vindo()
  puts "Bem vindo ao Cookbook, sua rede social de receitas"
end
def menu()
  puts "[#{CADASTRAR_RECEITA}] Cadastrar uma receita"
  puts "[#{VISUALIZAR_RECEITA}] Ver todas as receitas"
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
bem_vindo()
receitas = []
opcao = menu()
while (opcao != SAIR)
  if(opcao == CADASTRAR_RECEITA)
   receitas << cadastrar_receita()
  elsif(opcao == VISUALIZAR_RECEITA)
    mostrar_receitas(receitas, receitas.length)
  else
    puts "Opção invalida"
  end
  opcao = menu()
end
puts 'Obrigado por utilizar o projeto!'
