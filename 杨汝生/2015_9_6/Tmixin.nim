proc create*[T](): ref T =
  # there is no overloaded 'init' here, so we need to state that it's an
  # open symbol explicitly:
  
  mixin init                 #若注释掉      Error: undeclared identifier: 'init'
  new result                #也可以注释掉
  init result                #也可换作 mixin ins

type
  Person = object
    name:string

var stu = create(Person)
echo stu.name
stu.name = "yrs"
echo stu.name
