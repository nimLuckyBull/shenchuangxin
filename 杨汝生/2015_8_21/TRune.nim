import unicode,strutils

echo Rune(97)

var 
  str = "杨"

echo len(str)                                        #返回存储字符串所用的字节数。 str[0]是字符串str第一个字节。
echo runeLen(str) 

echo runeLenAt(str,0)
var strR = runeAt(str,0)
echo int(strR)

echo BiggestInt(int(strR)).toHex(6)
echo BiggestInt(int(Rune(26472))).toHex(6)

echo toUTF8(Rune(26472))

