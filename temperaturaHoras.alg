Algoritmo "Upgrade Programa de Temperatura"
// Disciplina  : Semana 5 - Pacetch - Upgrade Programa de Temperatura
// Descri��o   : Op��o de convers�o de temperatura e registro de 4 temperaturas
// Autor(a)    : Ana�sa Mayara Teodoro
// Data atual  : 10/03/2022
Var
   // Se��o de Declara��es das vari�veis
opcao: literal
celsius, fahrenheit: real
procedimento opcoes()

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("-------------------------------------------------")
   escreval("Upgrade Programa de Temperatura - Vers�o 0.01.02")
   escreval("-------------------------------------------------")
   escreval("Caro usu�rio(a), por favor escolha uma das op��es abaixo: ")
   escreval("")
   escreval("1 - Celsius para Fahrenheit")
   escreval("2 - Fahrenheit para Celsius")
   escreval("3 - Listagem de registros das temperaturas e horas")
   escreval("4 - Sair ")
   escreval("-------------------------------------------------")
   escreval("")
   escreva("Digite o n�mero da op��o desejada: ")
   leia(opcao)
   
fimprocedimento

funcao celsiusFahrenheit(celsius: real): real
inicio
retorne(1.8 * celsius + 32)
fimfuncao

funcao fahrenheitCelsius(fahrenheit: real): real

Fimalgoritmo

inicio
   retorne(fahrenheit - 32) / 1.8
fimfuncao
procedimento registroDetemperaturas()
var
   // Se��o de Declara��es das vari�veis
   i,j,aux: inteiro
   horas: vetor[1..4] de inteiro
   temperaturas: vetor[1..4] de inteiro
inicio
   para i de 1 ate 4 faca
      escreval("")
      escreva("Digite a hora observada: ")
      leia(horas[i])
      escreva("Informe a temperatura observada: ")
      leia(temperaturas[i])
   fimpara

   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se temperaturas[j] > temperaturas[i] entao
            aux <- temperaturas[i]
            temperaturas[i] <- temperaturas[j]
            temperaturas[j] <- aux
            aux <- horas[i]
            horas[i] <- horas[j]
            horas[j] <- aux
         fimse
      fimpara
   fimpara

   escreval("")
   para i de 1 ate 4 faca
      escreval("Temperatura em grau(s)", temperaturas[i], "�C, registrada �s", horas[i], "h. J� a convers�o de temperatura fahrenheit � ", celsiusFahrenheit(temperaturas[i]):2:2, "�F.")
   fimpara
fimprocedimento


inicio

   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   repita
      opcoes()
      escolha(opcao)

      caso "1"
         escreval("")
         escreva("Informe a temperatura em �Celsius: ")
         leia (celsius)
         escreval("")
         escreval(celsius, "�C convertido(s) --> corresponde(m) a ", celsiusFahrenheit(celsius):2:2, "�F.")


      caso "2"
         escreval("")
         escreva("Informe a temperatura em �Fahrenheit: ")
         leia (fahrenheit)
         escreval("")
         escreval(fahrenheit, "�F convertido(s)--> corresponde(m) a ", fahrenheitCelsius(fahrenheit):2:2, "�C.")

      caso "3"
         registroDetemperaturas()

      caso "4"
           escreval("")
           escreval("")
           escreval("Encerrando....Upgrade Programa de Temperatura...")
           interrompa

      outrocaso
         escreval("Op��o inv�lida")

      fimescolha
   ate opcao = "4"

fimalgoritmo

