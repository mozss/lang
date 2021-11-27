package main

import (
	"fmt"
)

func main(){
	//全局变量的使用, 全局变量必须被使用, 否则报语法错误
	var var_global_1 = 100
	var var_global_2 = "mozss"
	//全局变量也可以这里来写
	var(
		var_global_3 = "hello"
		var_global_4 = 2022
	)

	//定义变量但是不赋值, 使用默认值
	var var_1 int
	fmt.Println(var_1)

	//也可用通过类型推断,根据变量来自行判断变量的类型
	var var_2 = 1.9
	fmt.Println(var_2)

	//省略var, 使用:=的方式,表示进行声明赋值,可用将:理解成变量声明
	i,j := 11, "Hello"
	fmt.Println(i,j)

	//这里输出全局变量
	fmt.Println(var_global_1)
	fmt.Println(var_global_2)

	//这里输出全局变量
	fmt.Print(var_global_3)
	fmt.Println(var_global_4)

}
