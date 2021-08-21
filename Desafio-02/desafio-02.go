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
	"strings"
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

	if strings.ToLower(nome) == "pedro" {
		meliante.Atributo = "Bonito"
	} else if strings.ToLower(nome) == "jonas" {
		meliante.Atributo = "Zica de mais"
	} else if strings.ToLower(nome) == "well" {
		meliante.Atributo = "Lindão"
	} else if strings.ToLower(nome) == "chico" {
		meliante.Atributo = "Bebe água"
	} else {
		meliante.Atributo = ""
	}

	return meliante.Atributo
}
