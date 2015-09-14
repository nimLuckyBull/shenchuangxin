#233  171  152   高 UTF-8码三个字节的整型。 

var s:string = "任"
for i in 0..2 :
   echo int(s[i])

s[0] = char(233)
s[1] = char(171)
s[2] = char(152)

echo s
var ss:string=""
for i in 0..2:
   #ss = ss & s[i]
   ss.add(s[i])

echo ss