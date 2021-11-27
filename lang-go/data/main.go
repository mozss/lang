package main

import (
	"fmt"
	"unsafe"
)

func main(){
	//基本使用
	var a = false
	fmt.Println(a)
	//查看使用字节(a的占用字节为1)
	fmt.Printf("a的占用字节为",unsafe.Sizeof(a))
}
