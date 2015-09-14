
##nim中的int并没有默认类型,int类型可以根据需要成为任何整形
proc test1(a,b:int):int=
  result= a * b

var 
   x,y:int=0x7fffffff
   i,j:int32=0x5666
   v1,v2:int64=0x3434

echo test1(x,y)
echo test1(i,j)
#echo test1(v1,v2)   #但这里却出现了type mismatch: got (int64, int64)


##计算时,从小整形到大整型自动类型转换,但若将大整型传递给小整型则会出现类型不匹配错误

proc test2(a,b:int16):int16=
  result = a * b

var 
   x1,y1:int16=0x7fff
   x2,y2:int32=54

#echo test2(x1,y1)         #Error: unhandled exception: over- or underflow [OverflowError]
#echo test2(x2,y2)         #Error: type mismatch: got (int32, int32)


##int的默认类型并不是int32
proc test3(a,b:int32):int32=
  result=a * b

var 
  v3,v4:int32=0x7fffffff

#echo test3(v3,v4)        #Error: unhandled exception: over- or underflow [OverflowError]
echo test1(v3,v4)         #works,说明int的默认类型并不是int32









