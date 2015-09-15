
type
  mystring = ref string

var
  var1 = "yrs"
  var2 = "abc"
  var3 = "yrs"
  refvar1:mystring

echo repr(var1)
echo repr(var2)
echo repr(var3)

new refvar1

refvar1 = cast[mystring](addr(var1))
echo repr(refvar1)
refvar1 = cast[mystring](0x623dc8)        #注意变换0x623dc8 值，其代表的是var1 的地址。
echo repr(refvar1)

var1 = var2
echo repr(var1)
echo repr(refvar1)
