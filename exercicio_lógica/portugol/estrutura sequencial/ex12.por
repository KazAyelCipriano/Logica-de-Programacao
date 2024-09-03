programa {

  funcao inicio() {
    real sal_min,sal_user,resto
    inteiro resul

    escreva("Digite o valor atual do salário mínimo: ")
    leia(sal_min)

    escreva("Digite seu salário atual: ")
    leia(sal_user)

    resul = sal_user / sal_min
    resto = sal_user - (sal_min*resul)
    escreva("Você recebe ",resul," salários mínimos mais R$",resto)
  }
}
