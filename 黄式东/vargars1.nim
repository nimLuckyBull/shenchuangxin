proc myWriteln(f:File, a: varargs[string])=
  for s in items(a):
    write(f,s)
  write(f,"\n")


#myWriteln(stdout,"abc","def","xyz")
#��������ת�����������ʽ,��������ִ�н����һ����
myWriteln(stdout,["abc","def","xyz"])