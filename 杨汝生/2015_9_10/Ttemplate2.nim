template `%=` (a, b: expr): bool =
  # this definition exists in the System module
  not (a == b)
 

assert(5 %= 6) # the compiler rewrites that to: assert(not (5 == 6))

var a = 9'i64
assert((a+a) %= 2*a)


