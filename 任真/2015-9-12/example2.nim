type
  Maybe[T] = object
    case hasValue*: bool
    of true:
      value*: T
    of false: nil

var x = Maybe[string](hasValue: true, value: "Hello World!")
echo x.value # Output: Hello World!

