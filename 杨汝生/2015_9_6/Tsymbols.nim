type
  Index = distinct int

proc `==` (a, b: Index): bool {.borrow.}

var a = (0, 0.Index)                    #元组
var b = (0, 0.Index)

echo a == b # works!


type 
  Penson = ref object of RootObj
    name:string
    age:int

proc `==` (a,b: Penson):bool =
  if a.name == b.name and a.age == b.age:
    result = true
  else:
    result = false

var x = Penson(name:"yrs",age:22)
var y = Penson(name:"yrs",age:22)

echo x == y