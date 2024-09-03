programa {
  funcao inicio() 
  {
    inteiro alg1,alg2,alg3,alg4,alg5,alg6,alg7,alg8,alg9,alg10,alg11, somatorio, resto

    escreva("Digite seu cpf sem . ou - : ")
    leia(alg1,alg2,alg3,alg4,alg5,alg6,alg7,alg8,alg9,alg10,alg11)

    somatorio = alg1*10+alg2*9+alg3*8+alg4*7+alg5*6+alg6*5+alg7*4+alg8*3+alg9*2
    escreva(somatorio)
    resto = somatorio % 11
    escreva(resto)
     
    se ((resto<2 e alg10==0) ou (resto>=2 e alg10==11-resto)) 
    { 
        somatorio = alg1*11+alg2*10+alg3*9+alg4*8+alg5*7+alg6*6+alg7*5+alg8*4+alg9*3+alg10*2
        resto = somatorio % 11
        escreva(somatorio)
        escreva(resto)
        se((resto < 2 e alg11 == 0) ou (resto >= 2 e alg11 == 11-resto))
        {
          escreva("\nCPF válido")
          escreva("\nCPF de ")
          escolha (alg9){
            caso (0):
              escreva("Rio Grande do Sul")
              pare
            caso (1):
              escreva("Distrito Federal, Goiás, Mato Grosso, Mato Grosso do Sul ou tocantins")
              pare
            caso (2):
              escreva("Amazonas, Pará, Roraima, Amapá, Acre ou Rondônia")
              pare
            caso (3):
              escreva("Cerá, Maranhão ou Piauí")
              pare
            caso (4):
              escreva("Paraíba, Pernambuco, Alagoas ou Rio Grande do Norte")
              pare
            caso (5):
              escreva("Bahia e Sergipe")
              pare
            caso(6):
              escreva("Minas Gerais")
              pare
            caso(7):
              escreva("Rio de Janeiro ou Espírito Santo")
              pare
            caso(8):
              escreva("São Paulo")
              pare
            caso(9):
              escreva("Paraná ou Santa Catarina")
              pare
          }
        }
        senao{
          escreva("\nCPF inválido")
        }
    }
    senao
    {
      escreva("\nCPF inválido")
    }
  }
}
