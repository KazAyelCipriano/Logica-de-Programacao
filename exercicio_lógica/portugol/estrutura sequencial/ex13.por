programa {

  funcao inicio() {
    inteiro num,resul

    escreva("Digite um número para saber sua tabuada: ")
    leia(num)

    para(inteiro i=1;i<=9;i++){
      resul = num * i

      escreva(num," x ",i," = ",resul,"\n")
    }
  }
}
