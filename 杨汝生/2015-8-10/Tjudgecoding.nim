import encodings
var 
  file:File
  filename = r"D:\nim\chinese.txt"

type
  chinesearray = array[0..2,char]
  codingstring = string

var a:chinesearray
a = ['0','0','0']
#echo ($a)

file = system.open(filename)


proc judgefilecoding(file:File,a:var chinesearray): codingstring = 
  for i in 0..2:
    a[i] = file.readChar()

  if (int(a[0]) == 0xFF) and (int(a[1]) == 0xFE) :                                    #用编辑器编辑的文本，保存时会添加标识符。 记事本中：Uincode：文本开头添加 FF FE
    file.setFilePos(2)
    return "Unicode"
  
  elif (int(a[0]) == 0xFE) and (int(a[1]) == 0xFF) :                                    #Unicode big endian：添加 FE FF 
    file.setFilePos(2)
    return "Unicode big endian"

  elif (int(a[0]) == 0xEF) and (int(a[1]) == 0xBB) and (int(a[2]) == 0xBF):             #UTF-8: 添加 EF BB BF
    file.setFilePos(3)
    return "UTF-8"
                                                                                        #ANSI：英文ASCII，简体中文Gb2312,繁体Big5。在开头不添加标识符。
  else:                                                                                 # 用程序向一个文件写入文本，它的编码取决于这个文本原来的编码。写入后开头不添加标识符。
    if(int(a[0]) and 0x80) == 0x0 :                                                     #UTF-8 和 Gb2312 中如果是英文字母，存储方式和ASCII码是一样的。
      file.setFilePos(0)
      return "a char,don't judge"
    
    elif (int(a[0]) and 0xC0) == 0x80 :                                                 #Gb2312 存储中文字符用两个字节。
      file.setFilePos(0)
      return "Gb2312"
    
    else:
      if ((int(a[0]) and 0xF0) == 0xE0) and ((int(a[1]) and 0xC0) == 0x80) and ((int(a[2]) and 0xC0) == 0x80):
        file.setFilePos(0)                                    
        return "UTF-8"                                                        #UTF-8 存储的中文字大多是用3个字节，其存储特点是：第一个字节高位连续1的个数为字节数，
                                                                             #最后一个1后面为0，之后的每个字节，最高的2位为10。
      else:
        file.setFilePos(0)
        return "Gb2312"
  


proc readChinesechar(file:File, coding:codingstring): chinesearray = 
  case coding
  of "Unicode":                                                     #Unicode :两个字节存储
    for i in 0..1:
      result[i] = file.readChar()
  of "Unicode big endian":                                          #Unicode big endian :两个字节存储
    for i in 0..1:
      result[i] = file.readChar()
  of "Gb2312":                                                      #Gb2312 :两个字节存储
    for i in 0..1:
      result[i] = file.readChar()
  of "UTF-8":                                                       #UTF-8 :三个字节存储
    for i in 0..2:
      result[i] = file.readChar()
  of "a char,don't judge":                                          #英文字母一个字节存储
    result[0] = file.readChar()
  else:
    echo "unknown coding"

var coding = judgefilecoding(file,a)
echo coding
var l,n,m = readChinesechar(file,coding)
#echo ($l)
echo l
echo n
echo m
 
echo convert(($l),getCurrentEncoding(), "UTF-8" )
file.close()