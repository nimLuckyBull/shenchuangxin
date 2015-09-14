var x = 0
var y: type(x) # y has type int

type 
  Person = ref object of RootObj
  
var person:Person
var student:type(person)




import strutils

# strutils contains both a ``split`` proc and iterator, but since an
# an iterator is the preferred interpretation, `y` has the type ``string``:

var z: type("a b c".split)           #这里的split是一个迭代器，返回类型为字符串， 等价于 type("a b c".split(" "))

echo ("a b c".split)

for value in ("a b c".split(" ")):
  echo value