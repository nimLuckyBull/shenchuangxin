type 
  Penson = ref object of RootObj
    name:string
    age:int

template `==` (a,b: expr):expr =
  if a.name == b.name and a.age == b.age:
    true
  else:
    false

var x = Penson(name:"yrs",age:22)
var y = Penson(name:"yrs",age:22)

echo (x == y)
echo (x != y)