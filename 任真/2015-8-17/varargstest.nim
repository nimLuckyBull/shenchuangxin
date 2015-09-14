proc myWriteln(f: File, a: varargs[string]) =
  for s in items(a):
    write(f, s)
  write(f, "\n")

myWriteln(stdout, "abc", "def", "xyz")
#通过编译器转化为:
myWriteln(stdout, ["abc", "def", "xyz"])


proc myWriteln2(a:varargs[string],f:File) =    #变参数即使不是最后一个参数也可运行
  for s in items(a):
    write(f, s)
  write(f, "\n")

myWriteln2("abc","def","xyz",stdout)
myWriteln2(["abc","def","xyz"],stdout)

proc myWriteln2(a:varargs[string],b:varargs[int],f:File):int=
  5


