type
  Dollar = distinct int
  Euro =distinct int

var 
   d,d2:Dollar
   e:Euro

d=12.Dollar
d2=1.Dollar
#echo d+12     # Error: cannot add a number with no unit and a ``Dollar``  不能让一个没有单位的数与另一个有"Dollar"单位的数相加

#echo d+12.Dollar

#Unfortunately, d + 12.Dollar is not allowed either, because + is defined for int (among others), not for Dollar. So a + for dollars needs to be defined:
#不幸的是,d+12.Dollar也不被允许,因为+ 是为int定义的,没有为Dollar定义.所以需要为dollars定义`+`操作符

proc `+` (x,y:Dollar):Dollar=
  result = Dollar(int(x)+int(y))

proc `*` (x,y:Dollar):Dollar {.borrow.}


assert(int(d*d2)==12)
assert(int(d+d2)==13)
#echo d + d2
