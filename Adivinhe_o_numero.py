from random import randint


def dificuldade():
        nivel = 0
        print("""**
** Escolha o nivél:
**
** 1 - Fácil
** 2 - Normal
** 3 - Difícil
** 0 - Sair""")
        op = int(input("** --> "))        
        while True:
                
                if (op == 1):
                        nivel = 20
                        break                        
                elif (op == 2):
                        nivel = 10
                        break
                elif (op == 3):
                        nivel = 5
                        break
                elif (op == 0):
                        nivel = 0
                        break
                else:
                        print("**")
                        print("** Opção inválida!. Tente Novamente.")
                        op = int(input("** --> "))
        return nivel


def run():
        numero_sorteado = randint(0 ,101)
        nivel = dificuldade()
        tentativas = 1
        diferenca = 0
        cont = nivel
        PONTOS = 1000
        msn = ""

        while True:
                
                if (nivel == 0):
                        break

                cont -= 1
                print("**")
                print("** PONTOS --> {}\t TENTATIVA --> {}".format(PONTOS, tentativas))
                chute = int(input("** Chute um número: "))
                
                if (tentativas == nivel):
                        print("**")
                        print("** Você PERDEU.")
                        break
                        
                if (chute == numero_sorteado):
                        print("**")
                        print("** Parabéns VOCÊ acertou o número")
                        print("** O número sorteado foi {}".format(numero_sorteado))
                        print("** Você acertou em {} tentativas.".format(tentativas))
                        break
                elif (chute > numero_sorteado):
                        diferenca = chute - numero_sorteado
                        PONTOS -= diferenca
                        print("**")
                        print("** Você ERROU. Faltam {} tentativas.".format(cont))
                        print("** Tente novamente.")
                        print("** SEU NÚMERO É MAIOR DO QUE O NÚMERO SORTEADO!")
                elif (chute < numero_sorteado):
                        diferenca = numero_sorteado - chute
                        PONTOS -= diferenca
                        print("**")
                        print("** Você ERROU. Faltam {} tentativas.".format(cont))
                        print("** Tente novamente.")
                        print("** SEU NÚMERO É MENOR DO QUE O NÚMERO SORTEADO!")

                
                tentativas += 1


def main():
        print("""** Iniciar jogo?
** (y/n)
**""")
        op = input("** -->: ")
        while True:
                if (op == "n"):
                        print("**")
                        print("** FIM da execução...")
                        break
                elif (op == "y"):
                        run()
                else:
                        print("**")
                        print("** Valores POSSIVEIS \n** ( y/n )")
                print("**")
                print("""** Quer continuar jogando?
** (y) --> SIM
** (n) --> NÂO
**""") 
                op = input("** -->  ")

if __name__ == "__main__":
        main()
