programa
{
	real quantidadeDeLitrosAbastecidos = 0.0, mediaDeConsumoDoVeiculo = 0.0
	
	funcao inicio()
	{
	
		apresentarEObterDados() 
		
		logico isValido = validarEntradas() 
		se(isValido == falso){			
			retorne
		}
		
		realizaOCalculoEExibeNaTela() 
	}

	funcao apresentarEObterDados(){

		escreva("\nDigite a quantidade de litros abastecidos: ")
		leia(quantidadeDeLitrosAbastecidos)
		escreva("\nDigite a média de consumo do seu veículo:")
		leia(mediaDeConsumoDoVeiculo)
	}
	
	funcao realizaOCalculoEExibeNaTela()
	{

		real total = mediaDeConsumoDoVeiculo * quantidadeDeLitrosAbastecidos
		escreva("\nSeu veículo irá percorrer " + total + " Km")
	}
	
	funcao logico validarEntradas()
	{

		se(quantidadeDeLitrosAbastecidos < 0) 
		{
		 	escreva("\nA quantidade de litros abastecidos não pode ser negativa! ")
		 	retorne falso
		}

		senao se(mediaDeConsumoDoVeiculo < 0) 
		{
			escreva("\nA quilometragem percorrida não pode ser negativo! ")
			retorne falso
		}

		senao
		{
			retorne verdadeiro
		}
	}


}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 252; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */