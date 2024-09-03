programa
{
	
inclua biblioteca Util --> u

	const inteiro tamanho = (10)


	funcao merge_sort(inteiro vetor[], inteiro ini, inteiro fim){ // 6 ,4 ,8  ,2,7
		inteiro meio, i, j, k, aux[tamanho]
		// tamanho do vetor é maior que 1?
		se(ini < fim){
			meio = (ini + fim) / 2
			merge_sort(vetor, ini, meio)
			merge_sort(vetor, meio + 1, fim)
			
			// fazer o merge ordenando os elementos
			i = ini
			j = meio + 1
			k = ini
			
			enquanto(i <= meio e j <= fim){
				se(vetor[i] < vetor[j]){
				aux[k] = vetor[i]
				i++
				//k++
				}
				senao{
				aux[k] = vetor[j]
				j++
				//k++
				}
				k++
			}
			
			enquanto(i <= meio){
				aux[k] = vetor[i]
				i++
				k++
			}
			enquanto(j <= fim){
				aux[k] = vetor[j]
				j++
				k++
			}
			
			para(i = ini; i <= fim; i++){
				vetor[i] = aux[i]
			}
		}
}
	
	funcao inicio()
	{
		// Declaração de variáveis
		
		inteiro num[tamanho]        // Vetor para armazenar os números
		inteiro range = u.numero_elementos(num)     // Tamanho da lista

		// Geração de números aleatórios entre 1 e 1000
		para (inteiro i = 1; i < range; i++) {
	  		num[i] = u.sorteia(1, 1000)
		}
		
		// Exibição da lista desordenada
		escreva("Lista desordenada: ")
		para(inteiro numero = 0; numero < range; numero++){
	  		escreva(num[numero], ",")
		}

		merge_sort(num,0,tamanho-1)
		
		// Exibição da lista ordenada
        	escreva("\nLista ordenada: ")
        	para(inteiro numero = 0; numero < range; numero++){
       		escreva(num[numero], ",")
        	}
        
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1517; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */