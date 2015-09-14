type 
  Penson = ref object of RootObj
    name:string
    age:int

const isOverload = true
when isOverload:             #if isOverload:                     
  template `==` (a,b: expr):expr =
    if a.name == b.name and a.age == b.age:
      true
    else:
      false

var x = Penson(name:"yrs",age:22)
var y = Penson(name:"yrs",age:22)

echo (x == y)
echo (x != y)

#如果没有重载 `==` ，x,y是两个对象，原来的==判断 x 不等y ,
#重载之后可以达到自己想要的目的。 


#这里使用 when ，当isOverload 为true时，使用的是模板 `==`，为false时，使用的是系统 `==`。
#如果使用if 语句，则调用的是系统 `==`。

#这是一个使用when 和 if 的不同之处。