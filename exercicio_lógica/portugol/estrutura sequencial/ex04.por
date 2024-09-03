programa{
  funcao inicio(){
    const inteiro peso1 = 2
    const inteiro peso2 = 3
    real nota1,nota2,media

    escreva("Digite a 1° nota: ")
    leia(nota1)
    escreva("Digite a 2° nota: ")
    leia(nota2)

    media = (nota1 * peso1 + nota2 * peso2) / (peso1 + peso2)

    escreva("A média ponderada de ",nota1," e ",nota2," é ",media)
  }
}