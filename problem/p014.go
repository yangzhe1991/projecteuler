package main
import "fmt"
func f(a int64) int64{
	if a==1{
		return 1
	}
	if a%2==0{
		return f(a/2)+1
	}
	return f(3*a+1)+1
}
func main(){
	ans:=0
	max:=int64(0)
	for i:=1;i<1000000;i++{
		temp:=f(int64(i))
		if temp>max{
			max=temp
			ans=i
		}
	}
	fmt.Print(ans,max)

}
