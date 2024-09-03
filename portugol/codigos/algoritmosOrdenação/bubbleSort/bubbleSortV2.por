programa {
  // Incluindo a biblioteca "Util"
  inclua biblioteca Util --> u
  
  funcao inicio() {
    inteiro vet[10]  // Declarando um vetor de inteiros com 10 elementos
    inteiro aux = 0  // Variável auxiliar para trocar elementos
    inteiro tam = 0  // Variável para controlar o número de elementos no vetor

    // Preenchendo o vetor com números aleatórios entre 1 e 100
    para(inteiro i = 0; i <= 9; i++){
      vet[i] = u.sorteia(1, 100)  // Preenche o vetor com valores aleatórios
    }
    
    // Exibindo os valores iniciais do vetor
    escreva("Vetor desordenado: ")
    para(inteiro posicao = 0; posicao < 10; posicao++)
    {
      escreva (vet[posicao], " ")
    }

    // Variável para verificar se houve troca de elementos no vetor
    logico houveTroca = falso

    // Loop para ordenar o vetor (Bubble Sort)
    faca{
      houveTroca = falso  // Assume que não haverá troca
      
      // Obtém o número de elementos no vetor
      tam = u.numero_elementos(vet)

      // Loop para comparar e trocar os elementos no vetor
      para(inteiro j = 0; j < tam-1; j++){
        se(vet[j] > vet[j+1]){
          // Troca os elementos
          aux = vet[j]
          vet[j] = vet[j+1]
          vet[j+1] = aux
          houveTroca = verdadeiro  // Marca que houve uma troca
        }
      }
    }enquanto(houveTroca)  // Continua ordenando até não haver mais trocas

    escreva ("\nVetor ordenado: ")
    
    // Exibindo os valores ordenados do vetor
    para(inteiro posicao = 0; posicao < 10; posicao++)
    {
      escreva (vet[posicao], " ")
    } 
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 99; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */