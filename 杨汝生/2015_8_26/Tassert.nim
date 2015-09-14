var
  x, y: int

proc `*` *(a, b: seq[int]): seq[int] =
  # allocate a new sequence:
  newSeq(result, len(a))
  # multiply two int sequences:
  for i in 0..len(a)-1: result[i] = a[i] * b[i]

when isMainModule:
  # test the new ``*`` operator for sequences:
  assert(@[1, 2, 3] * @[1, 2, 3] == @[1, 4, 9],"测试重载运算符 `*`")               #可以添加提示信息。