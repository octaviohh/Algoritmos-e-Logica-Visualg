Algoritmo "Leitura de Temp"
//Leitor de temperaturas
Var
   temps: vetor[1..7, 1..3] de real
   diaquente, i, j: inteiro
   media: vetor[1..7] de real
   mediareal: real

Inicio
//Lendo as temperaturas
   Para i de 1 ate 7 Faça
      Para j de 1 ate 3 Faça
         Escreval("Dia:", i, "/ Período:", j, " Temperatura: ")
         Leia(temps[i,j])
      Fimpara
   Fimpara

//calculando a média de temp por dia
   Para i de 1 ate 7 Faça
      Para j de 1 ate 3 Faça
         media[i] <- media[i] + temps[i,j]
      Fimpara
   Fimpara
//dividindo por 3
   Para i de 1 ate 7 Faça
      media[i] <- media[i]/3
   Fimpara

//Escrevendo a matriz na tela
   Para i de 1 ate 7 Faça
      Para j de 1 ate 3 Faça
         Escreva(temps[i,j], " ")
      Fimpara
      Escreval()
   Fimpara

//Exibição de maior média
   mediareal <- media[1]
   diaquente <- 1

   Para i de 1 ate 7 Faça
      Se(media[i]>mediareal) Entao
         mediareal <- media[i]
         diaquente <- i
      Fimse
   Fimpara
   Escreval("Dia mais quente foi: ", diaquente, "com a média de: ", mediareal)

Fimalgoritmo