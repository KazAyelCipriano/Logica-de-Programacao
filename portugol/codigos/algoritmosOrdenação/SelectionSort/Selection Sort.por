programa {
	// Incluindo a biblioteca "Util"
	inclua biblioteca Util --> u
	
	funcao inicio() {
		inteiro vet[10] 	// Declarando um vetor de inteiros com 10 elementos
		inteiro aux = 0 	// Variável auxiliar para trocar elementos
		inteiro tam = 10     // Variável para controlar o número de elementos no vetor
		inteiro menor		// Variável auxiliar para deteminar menor elemento em uma comparação
		
		// Preenchendo o vetor com números aleatórios entre 1 e 100
		para(inteiro i = 0; i < tam; i++) {
			vet[i] = u.sorteia(1, 100)  // Preenche o vetor com valores aleatórios
		}
		
		// Exibindo os valores iniciais do vetor
		para(inteiro i = 0; i < tam; i++) {
			escreva(vet[i] + " | ")
		}
		
		// Buscando menor elemento para troca
		para(inteiro i = 0; i < tam - 1; i++) {
			menor = i
			para(inteiro j = i + 1; j < tam; j++) {
				se(vet[j] < vet[menor]) {
					menor = j
				}
			}
			// Troca os elementos
			aux = vet[menor]
			vet[menor] = vet[i]
			vet[i] = aux
		
		}
		escreva("\n")
		// Exibindo os valores iniciais do vetor
		para(inteiro i = 0; i < tam; i++) {
			escreva(vet[i] + " | ")
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 548; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vet, 6, 10, 3}-{menor, 9, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */