package main

import (
	"fmt"
	"math"
)
func main() {
	a:=make([][]float64,20)
	for i:=0;i<20;i++{
		a[i]=make([]float64,20)
		for j:=0;j<20;j++{
			fmt.Scanf("%f",&a[i][j])
		}
	}
	ans:=0.0
	max:=math.Max
	for i:=0;i<20;i++{
		for j:=0;j<20;j++{
			if i <=16{
				ans=max(ans,a[i][j]*a[i+1][j]*a[i+2][j]*a[i+3][j])
			}
			if j<=16{
				ans=max(ans,a[i][j]*a[i][j+1]*a[i][j+2]*a[i][j+3])
			}
			if i<=16&&j<=16{
				ans=max(ans,a[i][j]*a[i+1][j+1]*a[i+2][j+2]*a[i+3][j+3])
			}
			if i<=16&&j>=3{
				ans=max(ans,a[i][j]*a[i+1][j-1]*a[i+2][j-2]*a[i+3][j-3])
			}
		}
	}
	fmt.Printf("%f",ans)
}
