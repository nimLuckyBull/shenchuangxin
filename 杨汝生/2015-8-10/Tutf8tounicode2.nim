import math
var str = "三"

type
  unicodeint = array[0..6,int]
proc utf8tounicode(str:string):unicodeint = 
  var n:int
  #根据UTF-8存储Unico编码的规则，来算出UTF-8存储几个字节。    2003年11月UTF-8 被 RFC 3629 重新规范，只能使用原来Unicode定义的区域， U+0000到U+10FFFF。
  #也就是说UTf-8最多的有4个字节。Unicode最多是3个字节。
  
  if ord(str[0]) <=% 127: n = 1
  elif ord(str[0]) shr 5 == 0b110: n = 2
  elif ord(str[0]) shr 4 == 0b1110: n = 3
  elif ord(str[0]) shr 3 == 0b11110: n = 4
  elif ord(str[0]) shr 2 == 0b111110: n = 5
  elif ord(str[0]) shr 1 == 0b1111110: n = 6
  else: n = 1

  #根据UTF-8字节数，用与、或运算求出每个字节的十进制数。    result[6] 存储的是Unicode码的数组索引值。

  case n 
  of 1:
    result[0] = int(str[0])
    result[6] = 0
    
  of 2:
    result[0] = (int(str[0]) and 0x1C) shr 2                                          
    result[1] = (int(str[1]) and 0x3F) or ((int(str[0]) and 0x03) shl 6)
    result[6] = 1
  of 3 :
    result[1] = (int(str[2]) and 0x3F) or ((int(str[1]) and 0x03) shl 6)                  #((int(str[1]) and 0x03) shl 6)不能换成(int(str[1]) shl 6)，如换则不是8bit。
    result[0] = ((int(str[0]) and 0x0F) shl 4) or 
                        ((int(str[1]) and 0x3C) shr 2)

    result[6] = 1
  of 4:
    result[2] = (int(str[3]) and 0x3F) or ((int(str[2]) and 0x03) shl 6)
    result[1] = ((int(str[2]) and 0x3C) shr 2) or 
                        ((int(str[1]) and 0x0F) shl 4)

    result[0] = ((int(str[1]) and 0x30) shr 4) or 
                       ((int(str[0]) and 0x07) shl 2)
    result[6] = 2
  of 5:
    result[3] = (int(str[4]) and 0x3F) or ((int(str[3]) and 0x03) shl 6)
    result[2] = ((int(str[3]) and 0x3C) shr 2) or 
                                    ((int(str[2]) and 0x0F) shl 4)
    result[1] = ((int(str[2]) and 0x30) shr 4) or 
                                    ((int(str[1]) and 0x3F) shl 2)
    result[0] = (int(str[0]) and 0x03)
  of 6:
    result[3] = (int(str[5]) and 0x3F) or ((int(str[4]) and 0x03) shl 6)
    result[2] = ((int(str[4]) and 0x3C) shr 2) or 
                                    ((int(str[3]) and 0x0F) shl 4)
    result[1] = ((int(str[3]) and 0x30) shr 4) or 
                                    ((int(str[2]) and 0x3F) shl 2)
    result[0] = (int(str[1]) and 0x3F) or ((int(str[0]) and 0x01) shl 7)

  else:
    result[0] = int(str[0])
    result[6] = 0

var tunicode : unicodeint
tunicode = utf8tounicode(str)
for i in 0..tunicode[6]:
  echo tunicode[i]

