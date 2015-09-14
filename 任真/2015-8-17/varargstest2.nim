proc myWriteln(f: File, a: varargs[string, `$`]) =
  for s in items(a):
    write(f, s)
  write(f, "\n")

myWriteln(stdout, 123, "abc", 4.0)
# is transformed by the compiler to:
myWriteln(stdout, [$123, $"abc", $4.0])


proc myWriteln2(f: File, a: varargs[int, `-`]) =
  for s in items(a):
    writeln(f, s)
  

myWriteln2(stdout,1,2,3)

#is the same as:

myWriteln2(stdout,[-1,-2,-3])
