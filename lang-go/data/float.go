package main

import "fmt"

func main(){
	//浮点数在Go中的使用
	var a float32 = -9.334
	var b float64 = -829.2
	fmt.Println(a,b,"\n")

	//尾数可能会造成精度的丢失
	var c float32 = 20.123456789
	var d float64 = -9.12345678910111213141516
	fmt.Println(c,d,"\n")

	//go中默认浮点类型为float64
	var e = 0.236
	//这里使用%T来得到数据类型
	fmt.Printf("e的类型为%T",e)
}
