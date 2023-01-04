programa
{

	real quantidadeDeLitrosAbastecidos = 0.0, quilometragemTotalPercorrida = 0.0

	
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
		escreva("\nDigite o total de quilometros rodados conforme a quantidade de litros abastecidos: ")
		leia(quilometragemTotalPercorrida)
	}

	funcao realizaOCalculoEExibeNaTela()
	{

		real total = quilometragemTotalPercorrida / quantidadeDeLitrosAbastecidos
		escreva("\nSeu veículo consome " + total + " km/l ")
	}

	funcao logico validarEntradas()
	{

		se(quantidadeDeLitrosAbastecidos < 0)
		{
		 	escreva("\nO campo quantidade de litros não pode ser negativa! ") 
		 	retorne falso
		}

		senao se(quilometragemTotalPercorrida < 0)
		{
			escreva("\nO campo quilometragem percorrida não pode ser negativo! ")
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
 * @POSICAO-CURSOR = 749; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */