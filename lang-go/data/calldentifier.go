package main

import "fmt"

func main(){
	// + - * % ++ 案例
	var a int = 127
	var b int = 7

	fmt.Println(a + b)
	fmt.Println(a - b)
	fmt.Println(a * b)
	fmt.Println(a / b)
	fmt.Println(a % b)
	a++
	fmt.Println(a)
	a--
	fmt.Println(a)

}