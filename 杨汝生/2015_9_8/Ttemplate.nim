template `!=` (a, b: expr): expr =
  # this definition exists in the System module
  not (a == b)
 
assert(5 != 6) # the compiler rewrites that to: assert(not (5 == 6))
echo ("yrs" != "yrs")