
proc declareInt(x : int) =
    echo x

template declareInt(x: expr) =
  var x: int


declareInt(x) # error: unknown identifier: 'x'

#当出现重载时，如果参数没有声明，则会出现编译错误。 如果没有重载，怎不会报错。