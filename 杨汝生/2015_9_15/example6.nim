type
  Foo = tuple[x,y,z: string]

iterator items(a: Foo): string =
  yield a.x
  yield a.y
  yield a.z

for i in ("red","green","orign"):
  echo(i)









for i in 0..3:
  echo(i)
