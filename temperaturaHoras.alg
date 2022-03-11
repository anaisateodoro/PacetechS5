Algoritmo "Upgrade Programa de Temperatura"
// Disciplina  : Semana 5 - Pacetch - Upgrade Programa de Temperatura
// Descrição   : Opção de conversão de temperatura e registro de 4 temperaturas
// Autor(a)    : Anaísa Mayara Teodoro
// Data atual  : 10/03/2022
Var
   // Seção de Declarações das variáveis
opcao: literal
celsius, fahrenheit: real
procedimento opcoes()

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("-------------------------------------------------")
   escreval("Upgrade Programa de Temperatura - Versão 0.01.02")
   escreval("-------------------------------------------------")
   escreval("Caro usuário(a), por favor escolha uma das opções abaixo: ")
   escreval("")
   escreval("1 - Celsius para Fahrenheit")
   escreval("2 - Fahrenheit para Celsius")
   escreval("3 - Listagem de registros das temperaturas e horas")
   escreval("4 - Sair ")
   escreval("-------------------------------------------------")
   escreval("")
   escreva("Digite o número da opção desejada: ")
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
   // Seção de Declarações das variáveis
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
      escreval("Temperatura em grau(s)", temperaturas[i], "ºC, registrada às", horas[i], "h. Já a conversão de temperatura fahrenheit é ", celsiusFahrenheit(temperaturas[i]):2:2, "ºF.")
   fimpara
fimprocedimento


inicio

   // Seção de Comandos, procedimento, funções, operadores, etc...

   repita
      opcoes()
      escolha(opcao)

      caso "1"
         escreval("")
         escreva("Informe a temperatura em ºCelsius: ")
         leia (celsius)
         escreval("")
         escreval(celsius, "ºC convertido(s) --> corresponde(m) a ", celsiusFahrenheit(celsius):2:2, "ºF.")


      caso "2"
         escreval("")
         escreva("Informe a temperatura em ºFahrenheit: ")
         leia (fahrenheit)
         escreval("")
         escreval(fahrenheit, "ºF convertido(s)--> corresponde(m) a ", fahrenheitCelsius(fahrenheit):2:2, "ºC.")

      caso "3"
         registroDetemperaturas()

      caso "4"
           escreval("")
           escreval("")
           escreval("Encerrando....Upgrade Programa de Temperatura...")
           interrompa

      outrocaso
         escreval("Opção inválida")

      fimescolha
   ate opcao = "4"

fimalgoritmo

