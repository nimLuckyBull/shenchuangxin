import strutils#,example2

type
  Maybe[T] = object
    case hasValue*: bool
    of true:
      value*: T
    of false: nil




proc intOrString[T: int | string](x: Maybe[T]) =
  assert x.hasValue
  when T is int:
    echo x.value + 5
  elif T is string:
    echo parseInt(x.value) + 5

var x = Maybe[string](hasValue: true, value: "4")

intOrString(x)
