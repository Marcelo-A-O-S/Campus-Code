ADICIONAR_ALUNO = 1
MOSTRAR_ALUNOS = 2
CORRIGIR_NOTA = 3
QUANTIDADE_ALUNO = 4
SAIR = 0
alunos = []
notas = []
def adicionar_aluno(alunos, notas)
  puts "Digite o nome do aluno: "
  alunos << gets.chomp()
  puts "Digite a nota do aluno: "
  notas << gets.to_i()
end
def mostrar_resultado(alunos, notas)
  indice = 0
  while(indice != alunos.length)
    puts "#{alunos[indice]} tirou nota #{notas[indice]}"
    indice = indice + 1
  end
end
def corrigir_nota(alunos, notas)
  puts "Digite o nome do aluno que deseja modificar a nota: "
  busca = gets.chomp()
  match = false
  indice = 0
  while(indice < alunos.length)
    if(alunos[indice] == busca)
      puts "Digite o nova nota do aluno: "
      notas[indice] = gets.to_i
      puts "#{alunos[indice]} teve sua nota modificada para #{notas[indice]}"
      match = true
      indice = indice + 1
    end
    indice = indice + 1
  end
  if(match == false)
    puts "Nenhum aluno encontrado!"
  end
end
def menu()
  puts "[#{ADICIONAR_ALUNO}] - Adicionar aluno \n[#{MOSTRAR_ALUNOS}] - MOstrar lista de alunos \n[#{CORRIGIR_NOTA}] - Corrigir nota do aluno\n[#{QUANTIDADE_ALUNO}] - Imprimir quantidade de alunos\n[#{SAIR}] - Sair"
  print "Escolha uma das opções: "
  return gets.chomp().to_i()
end
opcao = menu()
while(opcao != SAIR)
  if(opcao == ADICIONAR_ALUNO)
    adicionar_aluno(alunos, notas)
  elsif(opcao == MOSTRAR_ALUNOS)
    mostrar_resultado(alunos, notas)
  elsif(opcao == CORRIGIR_NOTA)
    mostrar_resultado(alunos, notas)
    corrigir_nota(alunos, notas)
  elsif(opcao == QUANTIDADE_ALUNO)
    puts "Essa turma possui #{alunos.length} participantes"
  else
    puts "Opção invalida"
  end
  opcao = menu()
end


