algoritmo "Adivinha o n�mero"
// Fun��o : Jogo de adivinhar o n�mero
// Autor : Jhonathas CFS
// Data : 8/25/2019
// Se��o de Declara��es 
var
tentativas, cont, n, numero_sorteado, diferenca, PONTOS, chute: inteiro

inicio

// funcao que escolhe o nivel
funcao dificuldade: inteiro
var op, nivel: inteiro
inicio
   repita
         escreval("** Escolha o nivel")
         escreval("** 1-F�cil")
         escreval("** 2-Normal")
         escreval("** 3-Dif�cil")
         escreval("** 0-VOLTAR")
         escreva("** ")
         leia(op)

         se op = 0 entao
            nivel <- 0
            interrompa
         fimse
         se op = 1 entao
            nivel <- 20
            interrompa
         fimse
         se op = 2 entao
            nivel <- 10
            interrompa
         fimse
         se op = 3 entao
            nivel <- 5
            interrompa
         senao
              escreval("Valo invalido! Tente novamente.")
         fimse

   fimrepita
retorne nivel
fimfuncao


//procedimento que roda o jogo
procedimento run()
inicio
PONTOS <- 1000
numero_sorteado <- randi(100)
n <- dificuldade()
tentativas <- 1
cont <- n

repita
      se n = 0 entao
          interrompa
      fimse
      //tentaivas restantes
      cont <- cont - 1
      //verifica se o jogador perdeu

      escreval("** PONTOS --> ",PONTOS," TENTATIVAS --> ",tentativas)
      escreval("** Chute um n�mero")
      escreva("** ")
      leia(chute)//LER O CHUTE
      se chute = numero_sorteado entao
          escreval("** Parab�ns voc� acertou o n�mero")
          escreval("** O numero sorteado foi ", numero_sorteado)
          escreval("** Voc� acertou em ",tentativas," tentativas")
          interrompa
      senao
          se chute > numero_sorteado entao
              diferenca <- chute - numero_sorteado
              PONTOS <- PONTOS - diferenca
              escreval("** Voc� ERROU. Faltam ",cont," tentativas")
              escreval("** Seu n�mero foi MAIOR do que o n�mero sorteado")
              escreval("** Tente novamente...")
          senao
              se chute < numero_sorteado entao
              diferenca <- numero_sorteado - chute
              PONTOS <- PONTOS - diferenca
              escreval("** Voc� ERROU. Faltam ",cont," tentativas")
              escreval("** Seu n�mero foi MENOR do que o n�mero sorteado")
              escreval("** Tente novamente...")
              fimse
          fimse
      fimse
      
      se tentativas = n entao
          escreval("** Voc� PERDEU")
          interrompa
      fimse
      
      tentativas <- tentativas + 1
      
      
fimrepita

fimprocedimento

// procedimento main do jogo
procedimento main()
var op : caractere
inicio

escreval("** Iniciar Jogo")
escreval("** Digite uma letra!")
escreval("** (y/n)")
repita
      escreva("** ")
      leia(op)
      se op = "y" entao
         run
      senao
           se op = "n" entao
           escreval("** SAINDO ...")
           interrompa
           senao
           escreval("** Valor inv�lido")
           fimse
      fimse
      escreval("** Iniciar Jogo")
      escreval("**")
      escreval("** (y/n)")
fimrepita
fimprocedimento


//main
main

fimalgoritmo
