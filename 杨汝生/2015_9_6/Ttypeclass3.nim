proc `==`*(x, y: tuple): bool =
  ## requires `x` and `y` to be of the same tuple type
  ## generic ``==`` operator for tuples that is lifted from the components
  ## of `x` and `y`.
  result = true
  for a, b in fields(x, y):
    if a != b: result = false


type 
  mytuple = tuple[name:string,age:int]
  mytuple2 = tuple[name:string,age:int]
  mytuple3 = tuple[age:int,name:string]
  mytuple4 = distinct mytuple

var 
  var1:mytuple
  var2:mytuple2
  var3:mytuple3


var1 = ("yrs",22)
var2 = ("yrs",23)
var3 = (22,"yrs")

var var4 = mytuple4(var1)           

echo (var1 == var2)
#echo (var1 == var3)         #type mismatch
#echo (var1 == var4)         #type mismatch



proc test(m:distinct mytuple) = discard

#test(var1)                 #type mismatch
#test(var4)                 #type mismatch