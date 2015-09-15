
type
  mystring = ref string
 
var
  var1:string
  var2:string
  var3:string
  refvar1:mystring
  refvar2:mystring
  
var1 = "yrs"
var2 = "abc"
var3 = "yrs"
new refvar1
new refvar2

echo repr(var1)
echo repr(var2)
echo repr(var3)
echo repr(refvar1)
echo repr(refvar2)

discard """
var1[0] = var2[0]
echo repr(var1)
echo repr(var2)

var1 = var2
echo repr(var1)
echo repr(var2)

refvar2 = cast[mystring](addr(refvar1))
echo repr(refvar2)
"""

#discard """
refvar1 = cast[mystring](addr(var1))
echo repr(refvar1)
refvar1 = cast[mystring](0x623dc8)          #0x00428454 为var1 变量的地址。  
echo repr(refvar1)                            

echo var1

refvar1[1] = 'b'                              
echo repr(var1)
echo repr(refvar1)
#"""





