programa
{
    // Inclui a biblioteca Util
    inclua biblioteca Util --> u

    // SUBROTINA PARA GERAR NÚMEROS EM ORDEM CRESCENTE
    funcao gerarNumCres(inteiro &num[], inteiro range)
    {
        // Gera o primeiro número aleatório entre 1 e 50
        num[0] = u.sorteia(1, 50)
        
        para (inteiro i = 1; i < range; i++) {
            // Gera um incremento aleatório e atualiza o próximo número no vetor
            num[i] = num[i-1] + u.sorteia(1, 10)
        }        
    }

    // SUBROTINA PARA GERAR NÚMEROS EM ORDEM DECRESCENTE
    funcao gerarNumDecres(inteiro &num[], inteiro range)
    {
        // Define o primeiro número como 30.000
        num[0] = 30000 
        
        para (inteiro i = 1; i < range; i++) {
            // Gera um decremento aleatório e atualiza o próximo número no vetor
            num[i] = num[i-1] - u.sorteia(1, 10)
        }    
    }

    // SUBROTINA PARA GERAR NÚMEROS SEM ORDEM
    funcao gerarNumDesor(inteiro &num[], inteiro range)
    {
        para (inteiro i = 0; i < range; i++) {
            // Gera números aleatórios no intervalo de -10.000 a 10.000
            num[i] = u.sorteia(-10000, 10000)
        }    
    }

    // SUBROTINA PARA ORGANIZAR O VETOR COM O ALGORITMO BUBBLESORT
    funcao ordenar(inteiro &vetor[],inteiro tamanho,inteiro qtnd)
    {
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

    // FUNÇÃO PRINCIPAL
    funcao inicio()
    {
        // Define os tamanhos dos vetores
        inteiro lista10000[10000], lista25000[25000], lista50000[50000]
        inteiro limites[] = {10000,25000,50000}
        
        // Loop para iterar sobre os tamanhos dos vetores
        para(inteiro i=0; i<3; i++){
            // Define o tamanho atual
            inteiro qtnd = limites[i]
            inteiro inicioTempo=0, fimTempo=0
            inteiro tempo[10]
            cadeia cenario="", quantidadeNumeros="" 
            
            // Loop para executar três cenários para cada tamanho de vetor
            para(inteiro k=1;k<=3;k++){
                
                // Loop para executar o mesmo cenário 10 vezes
                para(inteiro j=1; j<=10; j++){
                    
                    escolha(qtnd){
                        caso 10000:
                            quantidadeNumeros="10k"
                            
                            escolha(k){
                                caso 1:
                                    gerarNumCres(lista10000,10000)
                                    cenario="Ordem Crescente"
                                    pare
                                caso 2:
                                    gerarNumDecres(lista10000,10000)
                                    cenario="Ordem Decrescente"
                                    pare
                                caso 3:
                                    gerarNumDesor(lista10000,10000)
                                    cenario="Ordem Aleatória"
                                    pare
                            }
                            
                            inicioTempo = u.tempo_decorrido()
                            ordenar(lista10000,10000)
                            fimTempo = u.tempo_decorrido()
                            
                            pare
                        caso 25000:
                            quantidadeNumeros="25k"
                            escolha(k){
                                caso 1:
                                    gerarNumCres(lista25000,25000)
                                    cenario="Ordem Crescente"
                                    pare
                                caso 2:
                                    gerarNumDecres(lista25000,25000)
                                    cenario="Ordem Decrescente"
                                    pare
                                caso 3:
                                    gerarNumDesor(lista25000,25000)
                                    cenario="Ordem Aleatória"
                                    pare
                            }
                            
                            inicioTempo = u.tempo_decorrido()
                            ordenar(lista25000,25000)
                            fimTempo = u.tempo_decorrido()
                            
                            pare
                        caso 50000:
                            quantidadeNumeros="50k"
                            escolha(k){
                                caso 1:
                                    gerarNumCres(lista50000,50000)
                                    cenario="Ordem Crescente"
                                    pare
                                caso 2:
                                    gerarNumDecres(lista50000,50000)
                                    cenario="Ordem Decrescente"
                                    pare
                                caso 3:
                                    gerarNumDesor(lista50000,50000)
                                    cenario="Ordem Aleatória"
                                    pare
                            }
        
                            inicioTempo = u.tempo_decorrido()
                            ordenar(lista50000,50000)
                            fimTempo = u.tempo_decorrido()
                            
                            pare        
                        }
                        
                    inteiro tempoTotal = fimTempo - inicioTempo
                    
                    tempo[j-1] = tempoTotal
                }
                // Imprime informações sobre a execução
                escreva("\nQuantidade de números: ",quantidadeNumeros,"\n")
                escreva("Cenário: ",cenario,"\n")
                escreva("Tempo médio: ")
                
                real acumTempo = 0.0 
                para(inteiro tempos=0;tempos<10;tempos++){
                    //escreva(tempo[tempos],",")
                    acumTempo +=tempo[tempos]
                }
                escreva(acumTempo/=10)
                escreva("\n")
            }
            escreva("\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1300; 
 * @PONTOS-DE-PARADA = 106;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */