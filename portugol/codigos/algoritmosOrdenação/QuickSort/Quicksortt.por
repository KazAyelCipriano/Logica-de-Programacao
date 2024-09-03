programa
{
	
     funcao inicio()
	{ 
    
    
	
    
	
	
	
	}funcao quicksort(inteiro &vet[] , inteiro dir ,inteiro esq ){
   inteiro i
   inteiro j
   inteiro pivo
   inteiro aux
   dir = 0
   esq = vet[-1]
   i = dir  
   j = esq 
   pivo = vet[(dir + esq)/2]
   		enquanto(i <= j){
   			enquanto(vet[i] < pivo e dir < esq){
   				i++
   			}
   			enquanto(vet[j] > pivo e j > dir){
   				j--
   			}
   			se(i < j){
   				aux = vet[i]
   				vet[i] = vet[j]
   				vet[j] = aux
   				
   			}
   		}
   		se(j > dir){
   			quicksort(vet , esq , j+1)
   		}
   		se(i < esq){
   			quicksort(vet , i , esq)
	}
      
	}
    
 
 
    
     
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 93; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vet, 13, 28, 3}-{dir, 13, 44, 3}-{esq, 13, 57, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */