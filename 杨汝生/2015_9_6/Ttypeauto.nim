# allow any combination of param types
proc concat(a, b): string = 
  result = $a & $b


echo concat(1,2)
echo concat("abc",2)

var student = ("yrs",22)
echo concat(student,111)

type
  Person = object
    name:string
    age:int

type disPerson = distinct Person

var teacher = Person(name:"gz",age:53)
var disteacher = disPerson(teacher)

echo concat(teacher,student)
#echo concat(teacher,disteacher)