
var file:File
file = open(r"E:\Nim\test.txt",fmRead)        #以只读模式打开文件
echo file.readChar()
echo file.readChar()                             #读取一个字符

#file.close()


#file = open(r"E:\Nim\test.txt")                   #默认为只读模式
try:
  echo file.readLine()
  echo file.readChar()
  echo file.readLine()
  #echo file.readChar()
  #echo file.readChars()
  #echo file.readAll()                               #读取文件所有内容，如果`file`流的位置不在文件的开始处，将会引起IO异常。
except IOError:
  echo "IO Error"
finally:
  file.close()

#Error: unhandled exception: error while reading from file [IOError]
#Error: execution of an external program failed