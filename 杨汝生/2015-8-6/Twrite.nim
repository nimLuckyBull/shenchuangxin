
var file:File
file = open(r"E:\Nim\write.txt",fmWrite) 
file.write(12)
file.close()

echo readFile(r"E:\Nim\write.txt")

file = open(r"E:\Nim\write.txt",fmWrite)       #打开文件，写入的内容覆盖之前的内容。
file.write("Hello Nim")
file.close()

echo readFile(r"E:\Nim\write.txt")

file = open(r"E:\Nim\write.txt",fmAppend)       #打开文件，写入的内容添加到最后面。
file.write("\n")
file.write("How are you")
file.close()

file = open(r"E:\Nim\write.txt",fmAppend) 
file.writeln("\n","nn","=",44)                   #变参传入，最后写入'\n'
file.close()

echo readFile(r"E:\Nim\write.txt")