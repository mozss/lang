package main

import "fmt"

func main(){
	//使用byte来存储字符类型,值使用单引号来表示,直接输出byte值就是其对应的字符码值
	var a = 'a'
	var b = 'A'
	fmt.Println(a,b)

	//如果输出对应的字符,需要格式化输出
	fmt.Printf("a=%c b=%c",a,b)

	//byte类型的表数范围是0-255,如果存储的字符码值大于这个,可以使用int类型
	var d int = '美'
	fmt.Println(d)
	//赋值显然下面的字符码超过了byte, 会提示overflows byte
	//var c byte = '美'
	//fmt.Printf(c)

	//字符类型也进行运算
	var numb_1 = 'm'
	var numb_2 = 10 + numb_1
	fmt.Println(numb_2)

}
