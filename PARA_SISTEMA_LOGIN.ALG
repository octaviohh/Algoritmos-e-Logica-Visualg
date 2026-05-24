Algoritmo "Sistema_Login"
// Sistema de login
Var
   usersistema, passsistema, user, pass: caractere
   i: inteiro
Inicio
   userSistema <- "aluno"
   passSistema <- "123"

   Para i de 1 ate 3 Faça
      Escreval("------Login------")
      Escreval("Usuário:")
      Leia(user)
      Escreval("Senha:")
      Leia(pass)
      Se(user=userSistema) e (pass=passSistema) Entao
         Escreval("Seja bem-vindo ao sistema")
         Interrompa
      Senao
         Se((user<>userSistema) ou (pass<>passSistema)) e (i<>3) Entao
            Escreval("Usuário e senha incorretos, tente novamente")
         Senao
            Escreval("Usuário bloqueado!")
         Fimse
      Fimse
   Fimpara
Fimalgoritmo