
proc Tvar(m:string,n:var string) = 
  echo cast[int](m)
  echo cast[int](n)
  echo repr(m)
  echo repr(n)
  #m = m & "a"             Error: 'm' cannot be assigned to
  n = n & "a"
  echo n

var 
  var1 = "yrs"
  var2 = "abc"

echo cast[int](var1)
echo cast[int](var2)

echo repr(var1)
echo repr(var2)

Tvar(var1,var2)
echo var2

#传参传的是地址，带var 的参数在 过程中允许改变，不带var 的参数不允许改变其值。


