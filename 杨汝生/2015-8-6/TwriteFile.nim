
var content:string
var filename = r"E:\Nim\test1.txt"

content = "Hello ,wellcome to china,杨汝生"

writeFile (filename,content)  

var file:File
file = open(filename)
echo file.readAll()
file.close()

echo readFile(filename)

##把`content`全部写进路径名为filename的文件中，之后关闭文件。