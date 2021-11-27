package main

import "fmt"

//注意, 导入的包,必须被使用, 否则会报错
func main() {
	fmt.Printf("Hello,world!")
	fmt.Printf("单行注释和多行注释和Java中类似")

	fmt.Printf("\\t的使用","hello\tworld")

	fmt.Printf("\\n换行符的使用","hello\nword")

	fmt.Printf("\\r回车符号的使用\r","这是是一个回车")
}

