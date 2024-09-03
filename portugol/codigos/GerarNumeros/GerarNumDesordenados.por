programa
{
	inclua biblioteca Util --> u

	inteiro num[100]
	
	funcao inicio()
	{
		para (inteiro i = 0; i < 100; i++) {
			escreva(u.sorteia(1, 100), "\n") //acho que vc esqueceu de adicionar ao vetor ao invés de escrever //Aumentaria o intervalo final, para não sortear tantos números repetidos
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 305; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */