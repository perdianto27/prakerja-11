package main

import "fmt"

type Product struct{
	Name string
	Stock int
	Price int
}

func main()  {
	var product Product;
	product.Name = "Biskuit"
	product.Stock= 10
	product.Price=10000
	fmt.Println(product);
}