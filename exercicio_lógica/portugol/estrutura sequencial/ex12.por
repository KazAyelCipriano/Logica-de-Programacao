programa {

  funcao inicio() {
    real sal_min,sal_user,resto
    inteiro resul

    escreva("Digite o valor atual do sal�rio m�nimo: ")
    leia(sal_min)

    escreva("Digite seu sal�rio atual: ")
    leia(sal_user)

    resul = sal_user / sal_min
    resto = sal_user - (sal_min*resul)
    escreva("Voc� recebe ",resul," sal�rios m�nimos mais R$",resto)
  }
}
