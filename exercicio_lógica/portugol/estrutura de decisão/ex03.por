programa {
  funcao inicio() {
    real num1,num2
    cadeia valor 

    escreva("Digite o 1° número: ")
    leia(num1)
    escreva("Digite o 2° número: ")
    leia(num2)

    se (num1>num2){
      valor = ">"
    }senao{
      valor = "<"
    }

    escreva(num1," ",valor," ",num2)
  }
}
