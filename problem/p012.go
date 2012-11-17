package main

import "fmt"
import "math"
func main(){
	var sum int64
	for i:=int64(1);;i++{
		sum+=int64(i)
		num:=0
		for a:=int64(1);a<=int64(math.Sqrt(float64(sum)));a++{
			if sum%a==0{
				if sum==a*a{
					num++
				}else{
					num+=2
				}
			}
		}
		fmt.Println(sum,num)
		if num>500{
			fmt.Println(sum)
			return
		}
	}
}
