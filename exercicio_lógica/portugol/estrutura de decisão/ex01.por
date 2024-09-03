programa {
  funcao inicio() {
    real nota1,nota2,nota3,nota4,media

    escreva("Digite o valor da 1° nota: ")
    leia(nota1)
    escreva("Digite o valor da 2° nota: ")
    leia(nota2)
    escreva("Digite o valor da 3° nota: ")
    leia(nota3)
    escreva("Digite o valor da 4° nota: ")
    leia(nota4)

    media = (nota1+nota2+nota3+nota4) / 4

    escreva("Com média ",media, " você está ")

    se(media >= 7){
      escreva("Aprovado")
    }
    senao{
      escreva("Reprovado")
    }
  }
}
