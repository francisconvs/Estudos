// Existem N moedas, cada uma mostrando cara ou coroa. Gostaríamos que todas as moedas tivessem uma sequência de caras e coroas alternadas. Qual é o número mínimo de moedas que devem ser revertidas para conseguir isso?

// Função de escrita:
// 	def solution(A)

// que, dado um array A consistindo de N inteiros representando as moedas, retorna o número mínimo de moedas que deve ser revertido. Os elementos consecutivos da matriz A representam moedas de censura e contêm 0 (cara) ou 1 (coroa).

// Exemplos:

// 1. Dado o array A = [1,0,1,0,1,1], a função deve retornar 1. Depois de inverter a sexta moeda, alcançamos uma sequência alternada de moedas [1,0,1,0,1,0].
package main

import (
	"fmt"
)

func main() {
	A := [10]int{1, 0, 1, 0, 1, 1}
	solution(A)

}

func solution(A [10]int) {

	for i := 0; i < 10; i++ {
		fmt.Println(A[i])
		anterior = A[(i-1)]
		if A[i] == anterior {
			
		}
	}
}
