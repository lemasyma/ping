#!/usr/bin/awk -f

BEGIN{
	delete arr[0]
	max=0
	min=5000
	len=0
	sum=0
	mdev=0
	i=0
	}
{
	arr[len]=$1
	sum+=$1
	if($1>max)
		max=$1

	if($1<min)
		min=$1
	len++
	}
END {
	for(i=0;i<len;++i)
		mdev+=(arr[i] - (sum/len))**2

	print "The minimum is " min " ms.";
	print "The average is " sum/len " ms.";	
	print "The maximum is " max " ms.";
	print "The total sum is " sum " ms.";
	print "The standard deviation is " sqrt(mdev/len) " ms.";} 
