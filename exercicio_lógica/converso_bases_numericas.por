programa{
  
  //funcao que converte binario para decimal
  funcao bina_deci(inteiro num_bina){

  }
  //funcao que converte binario para hexadecimal
  funcao bina_hexa(inteiro num_bina){

  }

  //funcao que converte hexadimal para decimal
  funcao hexa_deci(inteiro num_hexa){

  }

  //funcao que converte hexadecimal para binario
  funcao hexa_bina(inteiro num_hexa){

  }

  //funcao que converte decimal para binario 
  funcao deci_bina(inteiro num_deci){

  }
  //funcao que converte decimal para hexadecimal
  funcao deci_hexa(inteiro num_deci){

  }

  //funcao principal
  funcao inicio(){
    
    inteiro opcao,num
    
    escreva("Digite o número: ")
    leia(num)

    escreva("[1] Binário para decimal \n")
    escreva("[2] Binário para hexadecimal \n")
    escreva("[3] Hexadecimal para decimal\n")
    escreva("[4] Hexadecimal para binário\n")
    escreva("[5] Decimal para binário\n")
    escreva("[6] Decimal para Hexadecimal")
    escreva("Digite a sua opção:")
    leia(opcao)

    escolha (opcao){
      caso 1:
        deci_bina(num)
        pare
      caso 2: 
    }
  }
}