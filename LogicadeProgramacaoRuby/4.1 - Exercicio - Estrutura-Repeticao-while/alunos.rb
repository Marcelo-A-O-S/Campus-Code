ADICIONAR_ALUNO = 1
MOSTRAR_ALUNOS = 2
SAIR = 0
APROVADO = "Aprovado"
REPROVADO = "Reprovado"
alunos = []
def validar_nota(nota)
  if(nota < 5)
    return REPROVADO
  elsif(nota >= 5 && nota <= 10)
    return APROVADO
  else
    puts "Valor de nota informado invalido"
    puts "Digite a nota do aluno novamente: "
    nota = gets.chomp().to_i()
    validar_nota(nota)
  end
end
def adicionar_aluno()
  puts "Digite o nome do aluno: "
  nome = gets.chomp()
  puts "Digite a disciplina do aluno: "
  disciplina = gets.chomp()
  puts "Digite a nota do aluno: "
  nota = gets.chomp().to_i()
  status = validar_nota(nota)
  if(status == APROVADO)
    puts "O aluno foi #{APROVADO}"
  else
    puts "O aluno foi #{REPROVADO}"
  end
  puts "Registro do aluno #{nome} foi adicionado com sucesso!"
  return { nome: nome, nota: nota, disciplina: disciplina, status: status }
end
def mostar_alunos(alunos)
  for aluno in alunos do
    puts "#{aluno[:nome]} tirou nota #{aluno[:nota]} em #{aluno[:disciplina]}"
  end
end
def menu()
  puts "[#{ADICIONAR_ALUNO}] - Adicionar aluno \n[#{MOSTAR_ALUNOS}] - MOstrar lista de alunos \n[#{SAIR}] - Sair"
  print "Escolha uma das opções: "
  return gets.chomp().to_i()
end
while(opcao = SAIR)
  if(opcao == ADICIONAR_ALUNO)
    alunos << adicionar_aluno()
  elsif(opcao == MOSTRAR_ALUNOS)
    mostar_alunos(alunos)
  else
    puts "Opção invalida!"
  end
  opcao = menu()
end
