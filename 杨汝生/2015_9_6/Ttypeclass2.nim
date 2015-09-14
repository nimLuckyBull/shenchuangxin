proc onlyIntOrString[T: int|string](x, y: T) = discard

onlyIntOrString(450, 616) # valid
onlyIntOrString("xx","yy")
#onlyIntOrString(5.0, 0.0) # type mismatch
#onlyIntOrString("xy", 50) # 'T' 不能同时代表两种类型。