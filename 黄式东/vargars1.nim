proc myWriteln(f:File, a: varargs[string])=
  for s in items(a):
    write(f,s)
  write(f,"\n")


#myWriteln(stdout,"abc","def","xyz")
#被编译器转换成下面的形式,两个语句的执行结果是一样的
myWriteln(stdout,["abc","def","xyz"])