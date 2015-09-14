import algorithm
var x = @["foo", "123456789", "i", "doloroo"]

x.sort do (x, y: string) -> int:
  cmp(x.len, y.len)    #按序列的长度进行排序

echo x

# x = @["i", "foo", "doloroo", "123456789"]


x.sort(proc (x,y:string):int=
  cmp(x.len,y.len))

echo x
