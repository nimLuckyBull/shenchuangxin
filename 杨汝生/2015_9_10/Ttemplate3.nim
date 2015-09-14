type 
  Penson = ref object of RootObj
    name:string
    age:int

var isOverload = false
var str:string = readLine(stdin)            #怎么依据键盘输入，来确定使用那个 `==`
if str == "t":
  isOverload = true
else:
  isOverload = false
if isOverload:
  
  template `==` (a,b: expr):expr =
    echo "dd"
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