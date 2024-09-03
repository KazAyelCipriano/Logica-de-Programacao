programa {
  funcao inicio() {
    real num1,num2,resul
    inteiro opcao

    escreva("Digite o 1° número: ")
    leia(num1)
    escreva("Digite o 2° número: ")
    leia(num2)

    escreva("[1] Para calcular a média\n")
    escreva("[2] A Diferença do maior para o menor\n")
    escreva("[3] Produto dos números\n")
    escreva("[4] Divisão do primeiro pelo segundo\n")
    escreva("Digite a opção escolhida: ")
    leia(opcao)

    se (opcao == 1){
      resul = (num1 + num2) / 2
      escreva("A média entre ",num1," e ",num2," é igual a ",resul)
    }senao se(opcao == 2){
      real maior,menor
      se(num1>num2){
        maior = num1
        menor = num2
      }senao{
        maior = num2
        menor = num1
      }
      resul = maior-menor
      escreva(maior," - ",menor," = ",resul)
    }senao se(opcao == 3){
      resul = num1*num2
      escreva(num1," x ",num2," = ",resul)
    }senao se(opcao == 4){
      resul = num1 / num2
      escreva(num1," ÷ ",num2," = ",resul)
    }senao{
      escreva("OPÇÃO INVÁLIDA")
    }
  }
}
