Algoritmo "Campo_Minado"
//Campo minado
Var
   tab: vetor[1..4, 1..4] de inteiro
   seguros, linha, coluna, i, j: inteiro
   tela: vetor[1..4, 1..4] de caractere
   vitoria: logico
Inicio

//Monta a tela com os "*"
   Escreval("=== CAMPO MINADO ===")
   Para i de 1 ate 4 Faca
      Para j de 1 ate 4 Faca
         tela[i,j] <- " * "
         Escreva(tela[i,j])
      Fimpara
      Escreval()
   Fimpara

//Preenchimento dos compos da matriz tab com números
   Para i de 1 ate 4 Faca
      Para j de 1 ate 4 Faça
         tab[i,j] <- randi(9) + 1
      Fimpara
   Fimpara

//Definindo os safes como 0 e minas como 9
//Define a dificuldade do jogo
   Para i de 1 ate 4 Faca
      Para j de 1 ate 4 Faça
         Se(tab[i,j]<=8) Entao
            tab[i,j] <- 0
         Senao
            Se(tab[i,j]>8) e (tab[i,j]<=10) Entao
               tab[i,j] <- 9
            Fimse
         Fimse
      Fimpara
   Fimpara

// Conta quantos "0" existem no jogo
   seguros <- 0
   Para i de 1 ate 4 Faca
      Para j de 1 ate 4 Faca
         Se(tab[i,j] = 0) Entao
            seguros <- seguros + 1
         Fimse
      Fimpara
   Fimpara

//Início do jogo
   vitoria <- falso
   Repita
Limpatela()

//Exibição do tabuleiro atualizado para o jogador
      Escreval("=== CAMPO MINADO ===")
      Para i de 1 ate 4 Faca
         Para j de 1 ate 4 Faca
            Escreva(tela[i,j])
         Fimpara
         Escreval()
      Fimpara
      Escreval("Espaços seguros restantes: ", seguros)
      Escreval()
//Jogada linha
//Restrição de linha 1 a 4
      Repita
         Escreval("Informe a linha: ")
         Leia(linha)
      Ate(linha>0) e (linha<=4)

//Jogada coluna
//Restrição de coluna 1 a 4
      Repita
         Escreval("Informe a coluna: ")
         Leia(coluna)
      Ate(coluna>0) e (coluna<=4)

//Verificação de escolha do jogador
//Alteração de elementos na tela
      Se(tab[linha,coluna]=9) Entao
         tela[linha, coluna] <- " 9 "
      Senao
         Se(tab[linha,coluna]=0) Entao
//Verifica se na tela ainda era um *
            Se(tela[linha,coluna] = " * ") Entao
               seguros <- seguros - 1
            Fimse
//Altera o desenho para 0
            tela[linha, coluna] <- " 0 "
         Fimse
      Fimse

//Condição de vitoria por limpar o campo
      Se(seguros=0) Entao
         vitoria <- verdadeiro
      Fimse

//Finalização do jogo, pisar na bomba ou vencer
   Ate(tab[linha,coluna]=9) ou (vitoria=verdadeiro)

//Resultados
   Limpatela()
Escreval("=== RESULTADO FINAL ===")
   Para i de 1 ate 4 Faça
      Para j de 1 ate 4 Faça
         Escreva(tela[i,j])
      Fimpara
      Escreval()
   Fimpara

   Se (vitoria = verdadeiro) Entao
      Escreval("Parabéns, você ganhou!!")
   Senao
      Escreval("Você atingiu uma mina, fim de jogo!")
   Fimse


Fimalgoritmo