import unicode,encodings

var str = "杨汝生"

echo len(str)                                        #返回存储字符串所用的字节数。 str[0]是字符串str第一个字节。
echo runeLen(str)                                    #返回字符串的unicode 字符的个数。


echo runeLenAt(str,0)                                #这里的第二个参数是指字符串的str[i] 字节，根据utf8存储的特点，如果str[i]指向一个字符utr8码的头部，
echo runeLenAt(str,1)                                #则返回这个字符所占字节数，否则返回1。

#echo ord(str[0]) == int(str[0])


echo validateUtf8(str)                               #返回字符串str中第一个不是utf8码的字符位置，否则返回-1。
var strcov = convert(str,"GB2312","UTF-8")           #过程实现中，最多判断了4个字节的utf8。
echo validateUtf8(strcov)
var str2 = str & strcov 
echo validateUtf8(str2)


var index:Rune
index = runeAt(str,0)                                #如果第二个参数是一个utf8码字符的开头索引(str[0])，则返回该字符的Unicode码。否则返回Rune(ord(str[i]))
echo int(index)       


var varU = Rune(0x6768)                              #杨的unicode码 0x6768
echo toUTF8(varU)                                    #将一个Rune转化为其UTF8表示
echo convert(toUTF8(varU),"GB2312","UTF-8")   
 

echo Rune(97)                                        #过程echo定义为proc echo(x: varargs[expr, `$`])，在unicode模块里，重载了`$`，使参数转换为utf8表示。 
var 
  yrs:seq[Rune]                                               #proc `$`(rune: Rune): string {.raises: [], tags: [].}
yrs = @[runeAt(str,0),runeAt(str,3),runeAt(str,6)]            #proc `$`(runes: seq[Rune]): string {.raises: [], tags: [].}
echo yrs,"    ", str


echo toLower(Rune('A'))                                       #将参数转换成小写。这适用于任何Unicode字符。如果可能的话,选择“toLower”而不是“toUpper”。
echo toLower(Rune(2))
echo toLower(Rune(0x6768)),"   " ,"杨"

echo toUpper(Rune('a'))                                        ##将参数转换成大写。这适用于任何Unicode字符。如果可能的话,选择“toLower”而不是“toUpper”。
echo toUpper(Rune(0x6768)),"   " ,"杨"   
           

echo toTitle(Rune(97))                   ##???
echo isTitle(toTitle(Rune(97)))


echo isLower(Rune('a'))
echo isLower(Rune('A'))

echo isUpper(Rune('A'))

echo isAlpha(Rune(0x03B1))                                     #returns true iff `c` is an *alpha* Unicode character (i.e. a letter)
echo (convert(toUTF8(Rune(0x03B1)),"GB2312","UTF-8"))

echo isWhiteSpace(Rune(' '))                                  #returns true iff `c` is a Unicode whitespace character

echo isCombining(Rune(0x036f))                                #returns true iff `c` is a Unicode combining character
#echo isCombining(Rune('?'))
#echo (convert(toUTF8(Rune(0x036f)),"GB2312","UTF-8"))


for i in runes str:                                           #runes 是一个字符串的迭代器。i是以Rune类型迭代。遍历任何 字符串s 的Unicode 字符
  echo i


var 
  com1 = "一二"
  com2 = "二三"
echo cmpRunesIgnoreCase(str,str)                             #比较字符串，如果字符串相同，则返回0。 如果a>b,返回会正数，此数为字符串a与b的unicode字符不同时，两个字符unicode码之差。
echo cmpRunesIgnoreCase("一二","二三")                       #如果a<b,返回负数，同样，此数为字符串a与b的unicode字符不同时，两个字符unicode码之差。
echo cmpRunesIgnoreCase("二三","一二")                       
echo int(runeAt(com1,3)) - int(runeAt(com1,0))

echo cmpRunesIgnoreCase("abc","ABC")                         #大小写一样。


echo reversed(str)

  
  
  
  
  
  
