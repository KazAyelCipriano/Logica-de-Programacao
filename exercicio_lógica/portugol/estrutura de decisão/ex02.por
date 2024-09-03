programa {
  funcao inicio() {
    real nota1,nota2,media

    escreva("Digite o valor da 1° nota: ")
    leia(nota1)
    escreva("Digite o valor da 2° nota: ")
    leia(nota2)

    media = (nota1+nota2) / 2

    escreva("Com média ",media, " você está ")

    se(media < 3){
      escreva("reprovado")
    } senao se(media >=3 e media < 7){
      escreva("no exame")
    }senao{
      escreva("aprovado")
    }
  }
}
