type
  mystring = ref string

var 
  var1 = "yrs"
  refvar1:mystring
  refvar2:mystring

new refvar1
new refvar2

echo repr(var1)
#refvar2 = cast[mystring](addr(refvar1))
echo repr(refvar2)

echo repr(var1)

discard """
echo var1
refvar1 = cast[mystring](addr(var1))
refvar1 = cast[mystring](0x623de8)
echo repr(refvar1)
echo repr(var1)

refvar2 = cast[mystring](addr(refvar1))
#echo repr(refvar2)
"""
