package main

import (
	"fmt"
)

func main() {
	//数组类型默认值
	var a int
	var b float32
	var c float64
	var isStatus bool
	var name string
	fmt.Printf("a=%d, b=%v, c=%v, isStatus=%v, username=%v", a, b, c, isStatus, name) //a=0, b=0, c=0, isStatus=false, username=""

	var i int = 32
	// int32 -> float
	var j float32 = float32(i)
	fmt.Println(j)

	//高精度->低精度
	var k int8 = int8(i)
	fmt.Println(k)

	//低精度->高精度
	var m int64 = int64(i)
	fmt.Println(m)

	var a1 int = 10
	//var a2 float64 = 10.236
	//var a3 bool = false
	//var a4 byte = 'k'

	//fmt.spring转换
	b1 := fmt.Sprintf("%d",a1)
	fmt.Printf("b1类型%T b1=%q",b1,b1)


























}