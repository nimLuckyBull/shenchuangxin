type
  binaryarray = array[0..64,int]


proc tobinary(n:int): string =           ##十进制转换为二进制
  var 
    Nbinary:binaryarray
    i = 0
    m = n                               ##得把 n 赋给另一个变量，否则 n = (n div 2) 会编译出错。
  while m>0:
    Nbinary[i] = (m mod 2)
    inc(i)
    m = (m div 2)
  result = ""
  while i>0:
    dec(i)
    result = result & ($Nbinary[i])


proc tooctal(n:int): string =             ##十进制转换为八进制
  var 
    Noctal:binaryarray
    i = 0
    m = n                               
  while m>0:
    Noctal[i] = (m mod 8)
    inc(i)
    m = (m div 8)
  result = ""
  while i>0:
    dec(i)
    result = result & ($Noctal[i])

proc tohex(n:int): string =              ##十进制转换为十六进制
  var 
    Nhex:binaryarray
    i = 0
    m = n
    hexchar = ['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F']
  while m > 0:
    Nhex[i] = (m mod 16)
    inc(i)
    m = (m div 16)
  result = ""
  while i>0 :
    dec(i)
    result = result & ($hexchar[Nhex[i]])
  



echo tobinary(12)
echo tooctal(8)
echo tohex(15)