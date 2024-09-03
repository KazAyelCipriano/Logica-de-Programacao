programa
{
	//Programa para ordenar um vetor usando o método
			//TimSort

	//O programa deverá ordenar quebrando o vetor em sub-vetores
	//Ordenar os subvetores que podem já estar ordenados
	//de maneira crescente ou descrescente
	//O metodo TimSort é um algoritmo híbrido entre MergeSort e InsertionSort
	//Para funcionar corretamente deverá ser criada as duas funções de ordenação
	
	
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		const inteiro RUN = 32 			//Constante para auxiliar no InsertionSort
		inteiro n , minrun, tam = RUN 	//Variáveis para auxiliar no InsertionSort
		inteiro num[10] 				//Variável do vetor
		inteiro esq = 0, dir = 0 		//Variáveis para auxiliar na organização do vetor

									//Gerador de vetor aleatório
		escreva("Vetor desordenado: ")
		para (inteiro i = 0; i < 10; i++) {
			num[i] = u.sorteia(1, 100)
			escreva(num[i], " ")
		}

		
		
	}

									//Função InsertionSort
									//Implementação simples comparando
									//um a um os elementos do vetor

	funcao InsertionSort0(inteiro arr[] , inteiro left , inteiro right){

		para(inteiro i =left +1 ; i <= right ; i++){
			inteiro t = arr[i]
			inteiro j = i-1

			enquanto( j>= left e t < arr[j]){
				arr[j+1] = arr[j--]
			}
			arr[j+1] = t
		}
	}
									//Função InsertionSort
									//Teste base
	
	funcao InsertionSort(inteiro num[] , inteiro tam){
		inteiro i, j, x=0
		para ( i = 2; i <= tam ; i++){
			x = num[i]
			j=i-1
			num[0] = x
			enquanto ( x < num[j]){
				num[j+1] = num[j]
				j--
			}
			num[j+1] = x
		}

		escreva("Vetor ordenado por InsertionSort: ")
		para (i = 0; i < 10; i++) {
			escreva(num[i], " ")
		}
	}
									
									
									//Função InsertionSort v2
									//Tentativa de otimizar o algoritmo
									
	funcao InsertionSort2(inteiro num[], inteiro n){
		inteiro i = 10 , RUN = 10, x =0, j
		enquanto ( i < RUN ){
			x = num[i]
			j = i - 1
			enquanto (j >= 0 e num[j] > x){
				num[j+1] = num [j]
				j = j - 1
			}
			num[j+1] = x
			i = i++
		}

		escreva("Vetor ordenado por InsertionSort2: ")
		para (i = 0; i < 10; i++) {
			escreva(num[i], " ")
		}
		
	}

									//Função InsertionSort v3
									//3a tentativa de otimização

	funcao InsertionSort3(inteiro num[], inteiro range){

		// Declaração de variáveis
        range = 100     // Tamanho da lista

        // Geração de números aleatórios entre 1 e 1000
        para (inteiro i = 1; i < range; i++) {
            num[i] = u.sorteia(1, 1000)
        }

        // Exibição da lista desordenada
        escreva("Lista desordenada: ")
        para(inteiro numero = 0; numero < range; numero++){
            escreva(num[numero], ",")
        }

        // Obtém o tamanho da lista
        inteiro tam = u.numero_elementos(num)

        // Algoritmo de ordenação "Insertion Sort"
        para(inteiro j = 1; j < tam; j++){
            inteiro chave = num[j]
            inteiro preChave = j - 1

            // Move elementos maiores que a chave para a direita
            enquanto(j >= 0 e num[preChave] > chave){
                num[preChave + 1] = num[preChave]
                preChave--
            }

            // Insere a chave no local correto
            num[preChave + 1] = chave
        }

        // Exibição da lista ordenada
        escreva("\nLista ordenada: ")
        para(inteiro numero = 0; numero < range; numero++){
            escreva(num[numero], ",")
        }
	}

	
									//Função MergeSort
									//Implementação estável partindo o vetor em 2 subvetores
									//semi-ordenados antes de mesclar em um vetor único
	funcao MergeSort(inteiro arr[], inteiro l, inteiro m, inteiro r){
		
		inteiro len1 = m - l +1
		inteiro len2 = r - m
		inteiro esq[]
		inteiro dir[]

		para(inteiro i = 0 ; i < len1 ; i++){//preenchendo a esquerda
			esq[i] = arr[l + i]
			
		}
		para(inteiro i = 0 ; i < len2 ; i++){//preenchendo a direita
			dir[i] = arr[m + 1 + i]
			
		}
		
		inteiro i = 0
		inteiro j = 0
		inteiro k = l

		enquanto( i < len1 e j < len2){ //Iterar na esquerda e direita
			se(esq[i] <= dir[j]){
				arr[k] = esq[i]
				i++
			}
			senao{
				arr[k] = dir[j] //Elemento na direita é maior
				j++
			}
			k++
		}

		enquanto( i < len1){ //Copiar o restante da esquerda
			arr[k] = esq[i]
			k++
			i++
		}

		enquanto( j < len2){ //Copiar o restante da direita
			arr[k] = dir[j]
			k++
			j++
		}
		
		
	}

									//Função TimSort
									//Função de ordenação eficaz que usa dois algarismos
									//Mesclando InsertionSort e MergeSort

	funcao TimSort(inteiro arr[], inteiro n){
		
		const inteiro RUN = 32
		para(inteiro i = 0; i < n; i+=RUN){
			InsertionSort0(inteiro arr[], inteiro left, inteiro right)
		}

		para(inteiro s = RUN ; s < n ; s = 2*s){
			inteiro mid = left + s - 1
			inteiro right = min((left + 2*s - 1), (n-1))
			MergeSort(inteiro arr[], inteiro l, inteiro m, inteiro r)
			
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4855; 
 * @DOBRAMENTO-CODIGO = [14, 36, 51, 74, 97, 149, 153, 167, 162, 174, 180, 142];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */