Algoritmo "Jogo_Adivinhacao"
// Adivinhe o número
Var
   num_secreto, num_user, i: inteiro

Inicio
   num_secreto <- randi(10) + 1
   num_user <- 0
   i <- 1
   
   Escreval("Bem vindo!!!")

   Enquanto (num_secreto<>num_user) Faca
      Escreval("Adivinhe o número secreto:")
      Leia(num_user)
      Se(num_user>num_secreto) Entao
         Escreval("-Dica- É um número menor!")
      Senao
         Se(num_user<num_secreto) Entao
            Escreval("-Dica- É um número maior!")
         Fimse
      Fimse
      
      Se(num_secreto=num_user) Entao
         Escreval("Parabéns, você acertou!")
         Escreval("Tentativas:", i)
      Senao
         Escreval("Tente novamente!")
      Fimse
      i <- i + 1
   Fimenquanto

Fimalgoritmo