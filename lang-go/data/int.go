package main

import (
	"fmt"
	"unsafe"
)

func main() {
	//有符号int8
	var i int8 = 127
	fmt.Println(i)

	//无符号int8
	var j uint8 = 234
	fmt.Println(j)

	var a = 10
	//查看默认类型
	fmt.Printf("a的默认类型为%T\n",a)
	//查看a变量占用的字节的大小
	fmt.Printf("a占用的字节大小为%d",unsafe.Sizeof(a))
}