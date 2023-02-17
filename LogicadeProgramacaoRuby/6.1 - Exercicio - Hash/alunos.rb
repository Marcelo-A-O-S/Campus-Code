ADICIONAR_ALUNO = 1
MOSTAR_ALUNOS = 2
SAIR = 0
alunos = []

def adicionar_aluno()
  puts "Digite o nome do aluno: "
  nome = gets.chomp()
  puts "Digite a disciplina do aluno: "
  disciplina = gets.chomp()
  puts "Digite a nota do aluno: "
  nota = gets.chomp().to_i()
  puts "Registro do aluno #{nome} foi adicionado com sucesso!"
  return { nome: nome, nota: nota, disciplina: disciplina}
end
def mostar_alunos(alunos)
  for aluno in alunos do
    puts "#{aluno[:nome]} tirou nota #{aluno[:nota]} em #{aluno[:disciplina]}"
  end
end
def menu()
  puts "[#{ADICIONAR_ALUNO}] - Adicionar aluno \n[#{MOSTAR_ALUNOS}] - MOstrar lista de alunos \n[#{SAIR}] - Sair"
  print "Escolha uma das opções: "
  return gets.to_i()
end
opcao = menu()
puts opcao
puts SAIR
while(opcao != SAIR)
  if(opcao == ADICIONAR_ALUNO)
    alunos << adicionar_aluno()
  elsif(opcao == MOSTAR_ALUNOS)
    mostar_alunos(alunos)
  else
    puts "Opção invalida!"
  end
  opcao = menu()
end
