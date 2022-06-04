programa
{
	
	funcao inicio()
	{
		// Declarando variáveis
		inteiro n1, n2, n3, n4, val1, val2, val3, val4, identificador = sorteia(10000, 99999), idade
		real valor
		cadeia nome, morada

		//Atribuindo valores aleatórios as variáveis que farão parte do sorteio
		n1 = sorteia(0 , 9)
		n2 = sorteia(0, 9)
		n3 = sorteia(0, 9)
		n4 = sorteia(0, 9)

		// Adicionando os valores ao nosso vetor sorteio
		inteiro sorteio [] = {n1, n2, n3, n4}

		//Inserindo os dados do jogador e valor da aposta
		escreva("Insira os seus dados")
		escreva("\n")
		escreva("\n")
		escreva(" Nome: ")
		leia(nome)
		escreva("\n")
		escreva(" Morada: ")
		leia(morada)
		escreva("\n")
		escreva(" Idade: ")
		leia(idade)

		se (idade < 18)
		{
			escreva("Este jogo não é para menores de 18 anos!")
		}
		senao 
		{
			// Especificando falor da aposta
			escreva("\n")
			escreva(" Valor a apostar: ")
			leia(valor)
			
			//Especificando os valores a comparar
			escreva("Insira os números que deseja")
			escreva("\n")
			escreva("Insira o primeiro dígito: ")
			leia(val1)
			se (val1 > 9){
				escreva("Os números devem possuir apenas 1 dígito!")
			}
			senao
			{
				escreva("Insira o segundo dígito: ")
				leia(val2)
				se(val2 > 9){
					escreva("Os números devem possuir apenas 1 digito!")
				}
				senao
				{
					escreva("Insira o terceiro dígito: ")
					leia(val3)
					se(val3 > 9){
						escreva("Os números devem possuir apenas 1 digito!")
					}
					senao {
						escreva("Insira o quarto dígito: ")
						leia(val4)
						se(val4 > 9){
							escreva("Os números devem possuir apenas 1 digito!")
						}
						senao
						{
							//Condições de vitória e resultados
							/* Caso acertar apenas 1 dígito*/
							se(
								(val1 == sorteio[0] e val2 != sorteio[1] e val3 != sorteio[2] e val4 != sorteio[3]) ou 
								(val1 != sorteio[0] e val2 == sorteio[1] e val3 != sorteio[2] e val4 != sorteio[3]) ou 
								(val1 != sorteio[0] e val2 != sorteio[1] e val3 == sorteio[2] e val4 != sorteio[3]) ou 
								(val1 != sorteio[0] e val2 != sorteio[1] e val3 != sorteio[2] e val4 == sorteio[3])
							)
							{
							escreva("/*--------Ficha de aposta----------*/")
							escreva("\n")
							escreva(" Nome do jogador: "+nome)
							escreva("\n")
							escreva(" Morada: "+morada)
							escreva("\n")
							escreva(" Idade "+idade)
							escreva("\n")
							escreva(" Valor apostado: "+valor)
							escreva("\n")
							escreva(" Número escolhido: "+val1+""+val2+""+val3+""+val4)
							escreva("\n")
							escreva(" Resultado do sorteio: ")
				
							para(inteiro indice = 0; indice < 4; indice ++)
							{
								escreva(sorteio[indice])
							}
							escreva(" Você acertou apenas um número!!!")
							escreva("\n")
							escreva(" Ganhos: "+valor+" kzs")
							
							}
						
							/* Caso acertar apenas 2 dígitos*/
							senao  se(
									(val1 == sorteio[0] e val2 == sorteio[1] e val3 != sorteio[2] e val4 != sorteio[3]) ou 
									(val1 != sorteio[0] e val2 != sorteio[1] e val3 == sorteio[2] e val4 == sorteio[3]) ou
									(val1 == sorteio[0] e val2 != sorteio[1] e val3 == sorteio[2] e val4 != sorteio[3]) ou
									(val1 != sorteio[0] e val2 == sorteio[1] e val3 != sorteio[2] e val4 == sorteio[3]) ou
									(val1 == sorteio[0] e val2 != sorteio[1] e val3 != sorteio[2] e val4 == sorteio[3]) ou
									(val1 != sorteio[0] e val2 == sorteio[1] e val3 == sorteio[2] e val4 != sorteio[3])
								){
								escreva("/*--------Ficha de aposta----------*/")
								escreva("\n")
								escreva(" Nome do jogador: "+nome)
								escreva("\n")
								escreva(" Morada: "+morada)
								escreva("\n")
								escreva(" Idade "+idade)
								escreva("\n")
								escreva(" Valor apostado: "+valor)
								escreva("\n")
								escreva(" Número escolhido: "+val1+""+val2+""+val3+""+val4)
								escreva("\n")
								escreva(" Resultado do sorteio: ")
					
								para(inteiro indice = 0; indice < 4; indice ++)
								{
									escreva(sorteio[indice])
								}
								escreva(" Você acertou dois números, parabéns!!!")
								escreva("\n")
								escreva(" Ganhos: "+valor*2+" kzs")
							}
				
							/* Caso acertar apenas 3 dígitos*/
							senao  se(
								(val1 == sorteio[0] e val2 == sorteio[1] e val3 == sorteio[2] e val4 != sorteio[3]) ou
								(val1 != sorteio[0] e val2 == sorteio[1] e val3 == sorteio[2] e val4 == sorteio[3]) ou
								(val1 == sorteio[0] e val2 != sorteio[1] e val3 == sorteio[2] e val4 == sorteio[3]) ou
								(val1 == sorteio[0] e val2 == sorteio[1] e val3 != sorteio[2] e val4 == sorteio[3]) 
							){
								escreva("/*--------Ficha de aposta----------*/")
								escreva("\n")
								escreva(" Nome do jogador: "+nome)
								escreva("\n")
								escreva(" Morada: "+morada)
								escreva("\n")
								escreva(" Idade "+idade)
								escreva("\n")
								escreva(" Valor apostado: "+valor)
								escreva("\n")
								escreva(" Número escolhido: "+val1+""+val2+""+val3+""+val4)
								escreva("\n")
								escreva(" Resultado do sorteio: ")
					
								para(inteiro indice = 0; indice < 4; indice ++)
								{
									escreva(sorteio[indice])
								}
								escreva(" Você acertou 3 números, muito bem!!!")
								escreva("\n")
								escreva(" Ganhos: "+valor*4+" kzs")
							}
				
							/* Caso acertar todos (4) os dígitos*/
							senao  se(val1 == sorteio[0] e val2 == sorteio[1] e val3 == sorteio[2] e val4 == sorteio[3]){
								escreva("/*--------Ficha de aposta----------*/")
								escreva("\n")
								escreva(" Nome do jogador: "+nome)
								escreva("\n")
								escreva(" Morada: "+morada)
								escreva("\n")
								escreva(" Idade "+idade)
								escreva("\n")
								escreva(" Valor apostado: "+valor)
								escreva("\n")
								escreva(" Número escolhido: "+val1+""+val2+""+val3+""+val4)
								escreva("\n")
								escreva(" Resultado do sorteio: ")
					
								para(inteiro indice = 0; indice < 4; indice ++)
								{
									escreva(sorteio[indice])
								}
								escreva(" Perfeito você acertou todos os números")
								escreva("\n")
								escreva(" Ganhos: "+valor*10+" kzs")
							}
							senao
							{
								escreva("Infelizmente você errou todos os números, tente outra vez!")	
								escreva ("Ganhos: 0.0 kzs")	
							}
						}
					}
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4328; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */