programa {

  funcao cpfInvalido(){
    escreva("\nCPF inv�lido")
  }

  funcao conferirEstado(inteiro num){
    escreva("\nCPF de ")
            escolha (alg9){
              caso (0):
                escreva("Rio Grande do Sul")
                pare
              caso (1):
                escreva("Distrito Federal, Goi�s, Mato Grosso, Mato Grosso do Sul ou tocantins")
                pare
              caso (2):
                escreva("Amazonas, Par�, Roraima, Amap�, Acre ou Rond�nia")
                pare
              caso (3):
                escreva("Cer�, Maranh�o ou Piau�")
                pare
              caso (4):
                escreva("Para�ba, Pernambuco, Alagoas ou Rio Grande do Norte")
                pare
              caso (5):
                escreva("Bahia e Sergipe")
                pare
              caso(6):
                escreva("Minas Gerais")
                pare
              caso(7):
                escreva("Rio de Janeiro ou Esp�rito Santo")
                pare
              caso(8):
                escreva("S�o Paulo")
                pare
              caso(9):
                escreva("Paran� ou Santa Catarina")
                pare
            }
  }

  funcao inicio()
  {
    inteiro alg1,alg2,alg3,alg4,alg5,alg6,alg7,alg8,alg9,alg10,alg11, somatorio, resto

    escreva("Digite seu cpf sem . ou - : ")
    leia(alg1,alg2,alg3,alg4,alg5,alg6,alg7,alg8,alg9,alg10,alg11)

    //calcular o somat�rio e o resto dos primeiros 9 d�gitos
    somatorio = alg1*10+alg2*9+alg3*8+alg4*7+alg5*6+alg6*5+alg7*4+alg8*3+alg9*2
    resto = somatorio % 11

    //Se os 9 primeiros digitos forem diferentes
    se (nao(alg1==alg2 e alg2==alg3 e alg3==alg4 e alg4 == alg5 e alg5 == alg6 e alg6 == alg7 e alg7 == alg8 e alg8 == alg9)){

      //conferindo a valida��o do primeiro d�gito verificador 
      se ((resto<2 e alg10==0) ou (resto>=2 e alg10==11-resto)){ 

          //calcular o somat�rio e o resto dos primeiros 10 d�gitos
          somatorio = alg1*11+alg2*10+alg3*9+alg4*8+alg5*7+alg6*6+alg7*5+alg8*4+alg9*3+alg10*2
          resto = somatorio % 11

          se((resto < 2 e alg11 == 0) ou (resto >= 2 e alg11 == 11-resto)){
            escreva("\nCPF v�lido")
            conferirEstado(alg9)
          }
          senao{
            cpfInvalido()
          }
      }
      senao
      {
        cpfInvalido()
      }
    }
    //Se os 9 primeiros digitos forem iguais
    senao{
      cpfInvalido()
    }
  }
}
