// Quero que eu passe um parametro como por exemplo meu nome
// tipo: ./pessoa jonas
// return feio
// ./pessoa pedro
// retun bonito
// quero que quando receba o nome vc coloque este nome em um struct
// e passe para o metodo
// pessoa well
// return lindao
// pessoa chico
// return tyomahowk

package main

import (
	"fmt"
)

func main() {
	fmt.Println("Digite um nome: ")
	var nome string
	fmt.Scanln(&nome)
	fmt.Println(pessoa(nome))
}

func pessoa(nome string) string {

	type individuo struct {
		Name     string
		Atributo string
	}

	meliante := individuo{nome, "vazio"}

	if nome == "Pedro" {
		meliante.Atributo = "Bonito"
	} else if nome == "Jonas" {
		meliante.Atributo = "Zica de mais"
	} else if nome == "Well" {
		meliante.Atributo = "Lindão"
	} else if nome == "Chico" {
		meliante.Atributo = "Bebe água"
	}

	return meliante.Atributo
}
