template ones(n: expr): expr = ((1 shl n)-1)

var var1:int

var1 = 3 and ones(3)
echo var1