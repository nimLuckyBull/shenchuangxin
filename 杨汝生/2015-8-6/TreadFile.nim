
var filename = r"E:\Nim\test.txt"
var content = readFile(filename)
echo content

##读取一个名为`filename`的文件。
##然后调用 `readAll <#readAll>` 和之后关闭文件。返回字符串。