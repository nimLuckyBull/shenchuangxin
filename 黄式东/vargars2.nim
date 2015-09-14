proc myWriteln(f: File, a: varargs[string, `$`]) =
  for s in items(a):
    write(f, s)
  write(f, "\n")

myWriteln(stdout, 123, "abc", 4.0)
#被编译器转换为下面的形式，两语句的输出结果是一样的
myWriteln(stdout, [$123, $"abc", $4.0]) #注意$加在字符串前面表示不做任何操作