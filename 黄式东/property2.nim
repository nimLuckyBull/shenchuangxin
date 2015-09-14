type
  Vector* = object
    x,y,z:float

#初始化函数
proc `[]=`*(v:var Vector,i:int,value:float)=  #如何调用这个函数呢
  case i
  of 0: v.x=value
  of 1: v.y=value
  of 2: v.z=value
  else: assert(false)

proc `[]`*(v:Vector, i:int):float=
  case i
  of 0: result=v.x
  of 1: result=v.y
  of 2: result=v.z
  else: assert(false) #断言操作返回的是什么呢？
 

var vector1:Vector
#vector1.[] =  1.0 #仿造上例，问什么出错？
#[]=(vector1,3.0)  #也出错？使用过程名调用过程为什么不对？

[](vector1,1)  #出错，使用过程名调用过程为什么不对？
vector1[1] = 3.0
echo vector1[1]