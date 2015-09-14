from sequtils import toSeq

iterator something: string =
  yield "Hello"
  yield "World"

var info = toSeq(something())
echo info