package main
import(
		"fmt"
)

func main(){
	var a [2000005]int
	for i:=2;i<2000000;i++{
		for j:=2;j*i<2000000;j++{
			a[i*j]=1
		}
	}
	var sum int64
	for i:=2;i<2000000;i++{
		if a[i]==0{
			sum+=int64(i)
		}
	}
	fmt.Println(sum)

}
