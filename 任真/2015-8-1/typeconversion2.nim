var
  a,b:int=5
  c,d:float=5.0
  e,f:int32=5

#使用类型名进行类型转换
assert(a==(int)e)
assert(a==(int)c)
assert(d==(float)b)
assert(f==(int32)d)

#使用过程进行类型转换
assert(a==toInt(c))
assert(d==toFloat(e))
#assert(f==toInt32(b))   #Error: undeclared identifier: 'toInt32'


#使用cast进行类型转换
#assert(a==cast[int](c))
echo cast[int](c)
echo cast[float](a)
