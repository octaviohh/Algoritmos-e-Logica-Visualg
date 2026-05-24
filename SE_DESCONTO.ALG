Algoritmo "SE_DESCONTO"

Var
   valor_do_bem : real
   forma_pgto : inteiro
   desconto : real
   valor_descontado : real
Inicio
   Escreval("Informe o valor do bem?")
   Leia(valor_do_bem)
   Escreval("Selecione a forma de pagamento:")
   Escreval("1 - Pix")
   Escreval("2 - Dinheiro")
   Leia(forma_pgto)

   // Pix
   Se (forma_pgto = 1) Então
      desconto <- valor_do_bem * 0.1
   Fimse
   
   // Dinheiro e 5% de desconto
   Se (forma_pgto = 2) Então
      desconto <- valor_do_bem * 0.05
   Fimse

   valor_descontado <- valor_do_bem - desconto
   
   // Apresentação dos resultados
   Escreval("O valor do bem é:", valor_do_bem)
   Escreval("Valor do desconto é: ", desconto)
   Escreval("Valor a pagar é: ", valor_descontado)
   
Fimalgoritmo