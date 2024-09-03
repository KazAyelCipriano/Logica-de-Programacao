programa
{
	
	funcao inicio()
	{
		real sal,vendas,novo_sal
		const real acres = 0.04

		escreva("Digite o valor do salário atual: ")
		leia(sal)
		escreva("Digite o valor das suas vendas: ")
		leia(vendas)
		
		novo_sal = sal + vendas * acres

		escreva("R$",sal," + 4% de R$",vendas," = R$",novo_sal)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 296; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */