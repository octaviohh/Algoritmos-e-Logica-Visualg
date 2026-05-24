Algoritmo "Corrida de Robôs"
//Corrida de robôs
Var
   robo1, robo2: inteiro
   d1, d2: inteiro
Inicio
   robo1 <- 0
   robo2 <- 0

   Repita
      d1 <- randi(10) + 1
      robo1 <- robo1 + d1
      d2 <- randi(10) + 1
      robo2 <- robo2 + d2
      Escreval("Robô 1", robo1," - andou", d1 ," metros")
      Escreval("Robô 2", robo2, " - andou", d2 ," metros")
      Escreval("--------------------------------")
   Ate (robo1>=100) ou (robo2>=100)

   Se(robo1>=100) Entao
      Escreval("Robô 1 venceu")
   Senao
      Se (robo2>=100) Entao
         Escreval("Robô 2 venceu")
      Fimse
   Fimse

Fimalgoritmo