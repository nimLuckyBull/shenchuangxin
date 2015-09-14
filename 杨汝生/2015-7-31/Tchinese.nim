import encodings

var str = convert(open(getCurrentEncoding(),"UTF-8"),"信阳师范学院")
echo str

for i in 1..6:
  echo (str[0..i*2-1])                  #这种先把中文字符全部转化为系统编码，然后再一个个输出。


for i in 1..6:
  echo convert(open(getCurrentEncoding(),"UTF-8"),"信阳师范学院"[0..(3*i-1)])     #这种是把utf-8编码的字符先分开，再进行编码转换。效率肯定不如上面的方式。