type
  mystring = ref string

var
  var1 = "yrs"
  refvar1:mystring
  refvar2:mystring

new refvar1
new refvar2

refvar1 = cast[mystring](addr(var1))
echo repr(refvar1)

refvar2 = cast[mystring](addr(refvar1))

#echo repr(refvar2)                               #error


echo repr(var1)
refvar1 = cast[mystring](var1)        #现在refvar1 指向的是 "yrs" 内存存储的地址。
echo cast[int](refvar1)
echo cast[string](refvar1)



#引用类型和一个实例化的变量，在内存中的存储机理是一样的,引用是指向对象实例化变量的地址，实例化变量是指向对象在堆上的地址。引用也叫做别名。
#This means different references can point to and modify the same location in memory (also called aliasing).

#引用和对象变量 的内存单元存储的都是地址。 对象变量符值后，内存存储的地址为 实际对象在堆上的地址。
