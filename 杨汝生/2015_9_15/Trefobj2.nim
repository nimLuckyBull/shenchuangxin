
#实例化对象变量不能指向同一个对象，多个引用引用可以指向和改变在内存中同一个位置的值。

type
  myobj = object
    name:string
    age:int
  
  refmyobj = ref myobj

var 
  var1 = myobj(name:"yrs",age:22)
  var2:myobj
  refvar1:refmyobj
  refvar2:refmyobj

var2 = var1                            
echo repr(var1)                          #此时var1 与 var2 指向不同的对象。
echo repr(var2)

var2.name[0] = 'a'
echo "var1 = ",repr(var1)
echo "var2 = ",repr(var2)


new refvar1
new refvar2

refvar1 = cast[refmyobj](addr(var1))
refvar2 = refvar1
echo repr(refvar1)
echo repr(refvar2)

refvar2.name[0] = 'a'
echo repr(var1)
echo repr(refvar1)
echo repr(refvar2)








