import os

let
  path="usr/local/nimc.html"
  (dir,name,ext) = splitFile(path)#必须使用（）才能把tuple中的每个值分别赋给各个变量
  baddir,badname,badext = splitFile(path) #这样的话，把splieFile()过程的返回值分别赋给了baddir,badname,badext这三个变量
echo dir
echo name
echo ext

echo baddir
echo badname
echo badext