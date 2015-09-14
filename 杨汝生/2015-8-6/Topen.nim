discard """
var file:File
file = open(r"E:\Nim\test.txt",fmRead)        #以只读模式打开文件
echo file.readChar()                              #读取一个字符

file.close()


file = open(r"E:\Nim\test.txt")                   #默认为只读模式
echo file.readAll()                               #读取文件所有内容，如果`file`流的位置不在文件的开始处，将会引起IO异常。
file.close()


file = open(r"E:\Nim\test.txt")
echo file.readLine()                              #从文件`f` 读取一行文本。可能抛出一个IO异常。
file.close()


file = open(r"E:\Nim\test.txt")
echo file.getFileSize()                            #返回文件字节数。
file.close()
"""

var file:File
file = open(r"E:\Nim\test1.txt",fmReadWrite)       #打开文件，读或写，如果该文件不存在，则创建文件。如果文件存在，里面的内容会被清空。
echo file.readAll()
file.close()  

discard """
file = open(r"E:\Nim\test2.txt",fmReadWriteExisting)   #打开文件，读或写，如果该文件不存在，将不创建文件,抛出异常。
echo file.readAll()
file.close()  
"""