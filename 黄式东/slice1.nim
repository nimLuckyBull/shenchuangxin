var
  a = "Nim is a progamming language"
  b = "Slices are useless." 

#  xyz[a..b]就表示一个分片
echo a[7..12] # --> 'a prog'
#b[11..-2] = "useful" #教程上面的这个代码已经执行不了了，“-”必须换成“^”
#b[11..^2] = "useful"
b[0..^2] = "useful"
echo b  
b = "Slices are useless." 
b[1..^2] = "useful"
echo b
b = "Slices are useless." 
b[^2..^3] = "Useful"
echo b
b = "Slices are useless." 
b[^2..^6] = "Xseful"
echo b 
b = "Slices are useless." 
b[^2..10] = "Xseful7891011"
echo b 
b = "Slices are useless." 
b[^2..0] = "Xseful7891011"
echo b 
b = "Slices are useless." 
b[^2..15] = "Xseful7891011"#这个时候编译不会出错
echo b 
b = "Slices are useless." 
b[^2..150] = "Xseful7891011"#这个时候编译会出错
echo b 
b = "Slices are useless." 
b[^2..^1000] = "Xseful7891011"
echo b 