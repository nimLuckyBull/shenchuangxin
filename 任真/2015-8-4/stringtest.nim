var 
   s:string="teststring"
   s2:string
s2=s
echo s2
s2="this is a" & s
echo s2
s2.add("too")
echo s2


var i=0
while s[i]!='\0':
  echo s[i]
  #i++      #不能用i++??
  i=i+1

