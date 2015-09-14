import dis4

var 
  d1,d2:Dollar=12.Dollar
  e1,e2:Euro=10.Euro
  i1,i2:int=5



#assert(int(d1 * d2) == 144)
assert(int(-(d1))== -12)
assert (int(d1 + d2) == 24)
assert (int(d1 - d2) == 0)
assert (int(d1 * i1) == 60)
assert (int(i2 * d2)==60)
assert (int(d1 div i1) == 2)
assert (int(d2 mod i2) == 2)
assert ((d1 < d2) == false)
assert ((d1 <= d2) == true)
assert ((d1 == d2) == true)

assert (int(e1 + e2) == 20)
assert (int(e1 - e2) == 0)
assert (int(e1 * i1) == 50)
assert (int(i2 * e2)==50)
assert (int(e1 div i1) == 2)
assert (int(e2 mod i2) == 0)
assert ((e1 < e2) == false)
assert ((e1 <= e2) == true)
assert ((e1 == e2) == true)
