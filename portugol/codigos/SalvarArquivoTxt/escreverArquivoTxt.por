programa
{
	inclua biblioteca Tipos
	inclua biblioteca Arquivos --> a
	
	funcao inicio()
	{
		const cadeia caminhoAbsoluto = "H:\\Meu Drive\\trabalho lógica\\codigos\\SalvarArquivoTxt\\teste1.txt" 
		inteiro arquivoTeste = a.abrir_arquivo(caminhoAbsoluto, a.MODO_ESCRITA)
		
		para(inteiro i = 0; i < 10; i++){
			
			cadeia conteudoEscrever = "Valor: " + Tipos.inteiro_para_cadeia(i+1,10)
			escreva(conteudoEscrever)
			a.escrever_linha(conteudoEscrever,arquivoTeste)
		}

		a.fechar_arquivo(arquivoTeste)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 518; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */