proc myWriteln(f: File, a: varargs[string, `$`]) =
  for s in items(a):
    write(f, s)
  write(f, "\n")

myWriteln(stdout, 123, "abc", 4.0)
#��������ת��Ϊ�������ʽ����������������һ����
myWriteln(stdout, [$123, $"abc", $4.0]) #ע��$�����ַ���ǰ���ʾ�����κβ���