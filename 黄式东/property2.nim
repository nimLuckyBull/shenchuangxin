type
  Vector* = object
    x,y,z:float

#��ʼ������
proc `[]=`*(v:var Vector,i:int,value:float)=  #��ε������������
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
  else: assert(false) #���Բ������ص���ʲô�أ�
 

var vector1:Vector
#vector1.[] =  1.0 #������������ʲô����
#[]=(vector1,3.0)  #Ҳ����ʹ�ù��������ù���Ϊʲô���ԣ�

[](vector1,1)  #����ʹ�ù��������ù���Ϊʲô���ԣ�
vector1[1] = 3.0
echo vector1[1]