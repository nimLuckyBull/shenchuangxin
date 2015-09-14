
import unicode ,strutils
var 
   #str = "高踪同志缇櫢槑嘦"#230 181 137__230 186  174
   str = "敲毃僓龜鴈詟讋粲兲"
   i:int
for i in 0..len(str)-1:
    echo BiggestInt(ord(str[i])).toHex(2) 

#233 e9    171 ab  152  98
assert(233==0xe9)
#import unicode ,strutils

var gaoR = Rune(0x9ad8) #UTF-8
echo gaoR
assert(int(gaoR)==0x9ad8)

#溮
echo Rune(0x9a*256+0xd8)

var n =BiggestInt(255)
echo n.toHex(1)

var m = Rune(0x0010FFF8)
echo int(m)#玭
echo m
echo Rune(0x5172)

for i in 0..100:
      echo Rune(i+50000)


