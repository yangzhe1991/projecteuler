for i in range(2,1000):
	for j in range(2,i+1):
		for k in range(2,j+1):
			if i+j+k!=1000:
				continue
			if i*i==j*j+k*k:
				print i*j*k
				
