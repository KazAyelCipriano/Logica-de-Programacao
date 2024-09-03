programa {
  funcao inicio() {
    real num1,num2,num3,maior
    cadeia valor 

    escreva("Digite o 1° número: ")
    leia(num1)
    escreva("Digite o 2° número: ")
    leia(num2)
    escreva("Digite o 3° número: ")
    leia(num3)

    se (num1>num2 e num1 > num3){
      maior = num1
    }senao se(num2 > num1 e num2 > num3){
      maior = num2
    }senao{
      maior = num3
    }

    escreva("Entre ",num1,", ",num2," e ",num3," o maior é o ",maior)
  }
}
