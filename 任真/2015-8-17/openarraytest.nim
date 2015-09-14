
##openarray类型只能作为参数,且实参必须以数组的形式转递给openarray参数

type
   m = distinct int

var a,b:m=4.m

proc test(a:openarray[m]) = discard

test([a,b])
#test([a,b,4])        #Error: type mismatch: got (int literal(4)) but expected 'm'


type
  per = ref object of RootObj
  son = ref object of per

var 
   p1,p2:per
   s1,s2:son

#new(p1)
#new(p2)
new(s1)
proc test2(a:openarray[son]) = discard

#test2([p1,s1])       #向上转型是自动的,向下转型需要强制执行

##openarraytest.nim(28, 6) Error: type mismatch: got (Array constructor[0..1, per])
##but expected one of: 
##openarraytest.test2(a: openarray[son])

test2([s1])

proc test3(a:openarray[int]) = discard

test3([1,2,4'i32])

type
   arrT=array[0..3,int]

var arr:arrT=[1,2,3'i8,int(a)]


