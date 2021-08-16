// Quero que você faça uma função em golang de some e retorne o valor
// Vou colocar melhor
// Quero que você faça um metodo que eu passe dois numeros  e operador(+ - * /) e retorne o valor
// Casos
// valor >= 0 =--> retorne o valor da operação
// Novo
// valo < 0 --> valor negativo, inválido

package main

import "fmt"

func main() {
	soma(5, 5, "+")
	soma(5, 6, "-")
	soma(5, 5, "/")
	soma(5, 5, "*")
	soma(5, 5, "+++")

}

func soma(num1 int, num2 int, operador string) {

	if operador == "+" {
		validaValor(num1 + num2)
	} else if operador == "-" {
		validaValor(num1 - num2)
	} else if operador == "/" {
		validaValor(num1 / num2)
	} else if operador == "*" {
		validaValor(num1 * num2)
	} else {
		fmt.Println("Operador inválido")
	}
}

func validaValor(resultado int) {
	if resultado < 0 {
		fmt.Println("Valor negativo, inválido")
	} else {
		fmt.Println(resultado)
	}
}
