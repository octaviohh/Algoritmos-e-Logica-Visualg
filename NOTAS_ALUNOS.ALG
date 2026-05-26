Algoritmo "Notas_Alunos"
//Sistema de gerenciamento de notas de alunos

Tipo aluno = registro
   nome: caractere
   matricula: inteiro
   p1: real
   p2: real
   media: real
Fimregistro

Var
   cadaluno: vetor [1..10] de aluno
   relacao, repetir, i: inteiro

Inicio
   i <- 1

   //Atribuindo valores sequênciais para cada aluno
   Para i de 1 ate 10 Faça
      cadaluno[i].matricula <- i
   Fimpara
   Escreval("======================================")

   //Inserindo manualmente as notas e nomes de cada aluno
   Para i de 1 ate 10 Faça
      Escreval("Insira o nome do aluno", i)
      Leia(cadaluno[i].nome)
      Escreval("Nota do ", (cadaluno[i].nome) , " (M:",i ,") na avaliação P1:")
      Leia(cadaluno[i].p1)
      Escreval("Nota do ", (cadaluno[i].nome), " (M:",i ,") na avaliação P2:")
      Leia(cadaluno[i].p2)
      limpatela()

      //Cálculo da média simples
      cadaluno[i].media <- (cadaluno[i].p1 + cadaluno[i].p2)/2

   Fimpara

   //Vizualizar lista de nomes dos alunos
   limpatela()
   Escreval("Deseja Vizualizar a lista de alunos cadastrados?")
   Escreval("1 - SIM")
   Escreval("2 - NÃO")
   Leia(relacao)
   Se(relacao=1) Entao
      Escreval("===== Lista de Alunos Cadastrados =========")
      Para i de 1 ate 10 Faça
         Escreval(cadaluno[i].nome, " - Matrícula =", cadaluno[i].matricula)
      Fimpara
      Escreval("==========================================")
   Senao
   Fimse

   //Consultar notas de alunos cadastrados

   Escreval("======== Consulte as notas dos alunos cadastrados ========")
   Repita
      Escreval("Digite a matrícula do aluno que deseja consultar a nota:")
      Leia(i)
      Escreval("Nome: ", cadaluno[i].nome)
      Escreval("Nota P1: ",cadaluno[i].p1)
      Escreval("Nota P2: ", cadaluno[i].p2)
      Escreval("Média: ", cadaluno[i].media:2:2)
      Escreval("Consultar mais alunos?")
      Escreval("1 - SIM")
      Escreval("2 - NÃO")
      Leia(repetir)
   Ate(repetir=2)

Fimalgoritmo