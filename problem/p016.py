s=1
for i in range(1000):
	s*=2
print s
ans=0
while s>0:
	ans+=s%10
	s/=10
	print s,ans
print ans
