
type
  myint = ref int
  
var 
  refvar1:myint
  refvar2:myint
  var1:int
  var2:int

var1 = 6
var2 = 10

new refvar1
new refvar2
echo repr(refvar1)

refvar1 = cast[myint](addr(var1))

echo repr(refvar1)

refvar2 = cast[myint](0x00428440)
echo repr(refvar2)

var1 = var2
echo repr(var1)
echo repr(refvar1)
echo repr(refvar2)

