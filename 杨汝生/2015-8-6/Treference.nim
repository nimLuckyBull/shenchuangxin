import strutils

discard """
type
  IntArray = array[0..3, string] # an array that is indexed with 0..5
var
  x,y: IntArray
x = ["1", "2", "3", "4"]
y = x
y[0] = "0"
for i in low(x)..high(x):
  echo x[i] , "  " , y[i]
"""

discard """
var 
  name1 = "yrs"                        #字符串是不可变的，
  name2 = "yrs"
  name3 = ""

name3 = name1  
echo repr(name1)
echo repr(name2)
echo repr(name3)
echo name1==name3
name3 = name3&name1
echo repr(name3)        
"""


discard """
type
  person = tuple[name: string, age: int] 

var student,teacher:person

student = ("mm",12)
echo student
teacher = student
echo teacher
teacher[0] = "yy"
echo teacher,"  ",student
"""

discard """
var
  x: seq[string] # a sequence of integers
  y: seq[string]
x = @[$1, $2, $3, $4, $5, $6] 
y = x
y[0] = $22
for i in x:
  echo(i)
for i in y:
  echo (i)

echo repr(x)
echo repr(y)
"""

discard """
type
  person = ref object of RootObj
    name:string
    age:int

var student,teacher:person
new student
new teacher
student = person(name:"mm",age:22)
echo student.name,"  ",student.age
teacher = student
teacher.name = "yy"
echo student.name,"  ",student.age

echo teacher == student
echo repr(teacher)
echo repr(student)
"""

discard """
type
  Data = tuple[x, y: int, s: string]

# allocate memory for Data on the heap:
var d = cast[ptr Data](alloc0(sizeof(Data)))     #使用alloc0 初始化为nil
var c = cast[ptr Data](alloc0(sizeof(Data)))
# create a new string on the garbage collected heap:
d.s = "abc"
d.x = 1
echo d.s,"  ",d.x

c = d
c.s = "cdf"
c.x = 0
echo d.s,"  ",d.x                                 #这时进行 c = d 赋值操作，那么c 和 d 指向同一个地址，改变c的值，同样改变d。

# tell the GC that the string is not needed anymore:
GCunref(d.s)

# free the memory:
dealloc(d)
dealloc(c)
"""



#Nim中的整型、浮点型、字符型、数组、序列、元组类型 赋值操作 是对这些对象的拷贝，不是引用，
#声明的对象赋值操作生成的是引用。

#引用（类似与其他编程语言中的指针）是一种介绍多对一关系的一种方法。这意味着不同的引用可以指向和修改相同的内存单元。
# 在nim中分为追踪引用和非追踪引用（反追踪）。非追踪引用也叫做指针。跟踪引用指向一个垃圾收集堆对象，反跟踪指向手动分配的对象或内存中其他地方的对象。因此反跟踪引用是不安全的。
#然而对于某些低层操作（访问硬件）反跟踪引用是不可避免的。

#追踪引用用ref关键字声明，非追踪引用用ptr关键字声明。
#为了创建一个新的追踪对象，内置函数new()必须被使用。为了处理反追踪内存函数alloc(),dealloc(),realloc()函数可以使用。




