programa
{
    // Incluindo a biblioteca "Util"
    inclua biblioteca Util --> u
    
    // Função para aguardar um determinado número de segundos
    funcao espere(inteiro seg){
        inteiro comeco = 0  // Variável para armazenar o tempo de início
        inteiro atual = 0   // Variável para armazenar o tempo atual
        inteiro total = 0   // Variável para calcular o tempo decorrido
        
        comeco = u.tempo_decorrido()  // Captura o tempo de início
        
        // Loop que verifica o tempo decorrido até que atinja o número de segundos desejado
        faca{
            atual = u.tempo_decorrido()  // Captura o tempo atual
            
            total = atual - comeco  // Calcula o tempo decorrido em milissegundos
            
        }enquanto (total < seg*1000)  // Verifica se o tempo decorrido é menor do que o desejado em milissegundos
    }
    
    // Função principal
    funcao inicio()
    {
        inteiro tempo = 0 // Variável para armazenar o tempo digitado pelo usuário
        
        escreva("Digite um valor para ser cronometrado: ") // Solicita ao usuário que digite um valor
        leia(tempo) // Lê o valor digitado pelo usuário
        
        // Loop que conta regressivamente a partir do valor digitado pelo usuário
        para(tempo; tempo >= 0; tempo--){
            escreva(tempo, "\n") // Exibe o tempo restante
            espere(1) // Chama a função "espere" para aguardar 1 segundo
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1467; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */