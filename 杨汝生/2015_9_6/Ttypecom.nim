# create a type class that will match all tuple and object types

#type RecordType = tuple or object              #ttypecom.nim(12, 12) Error: type mismatch: got ((string, int))
                                                  #but expected one of:ttypecom.printFields(rec: RecordType)

type RecordType = (tuple or object)             #Araq 知道了这个错误，在他的devel下已改

#proc printFields(rec: tuple or object) =
proc printFields(rec: RecordType) =
  for key, value in fieldPairs(rec):
    echo key, " = ", value


var student = ("yrs",22)
printFields(student)

type
  Person = object
    name:string
    age:int

var teacher = Person(name:"gz",age:53)

printFields(teacher)