
##nim中int的大小取决于操作系统(32位为4字节,64位为8字节),但对于自动类型转换来说,类型从小到大为int8,int16,int32,int,int64

proc test(x,y:int64):int=
  int(x+y)

var 
   a,b:int=65
   c:int
c=test(a,b)

proc test2(x,y:int32):int=
   x+y

var d=test2(51,61)

echo sizeof(d)

echo sizeof(c)
echo sizeof(int)             
echo sizeof(int8)
echo sizeof(int16)
echo sizeof(int32)
echo sizeof(int64)


var e:int32=0x7fffffff



