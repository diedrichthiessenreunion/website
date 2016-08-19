{
#a=index($0,"900x600")
a=index($0,"<td valign=\"top\"><img")
if (a>0) 
	{
	a=$0
	a1=index(a,"<img")
	a2=substr(a,1,a1-1)
	a3=substr(a,a1)
	#print a2 a3
	#print $0
	getline
	b=$0
	b1=index(b,"src=")
	b2=substr(b,b1)
	b3=index(b2,"\"900")
	b4=substr(b2,b3)
	b5=index(b4,"JPG")
	b6=substr(b4,1,b5+3)
	a4="<a href="b6">"
	#print a4
	#print $0
	getline
	c=$0
	c1=index(c,"width=")
	c2=substr(c,c1)
	#print $0
	#print a,b2,c2,b6
	print a2 a4 a3, b2 c2
	#<a href="
	}
else
	{
	print $0
	}
}
