
proc declareInt(y : int) =
  echo y

template declareInt(x: expr) {.immediate.} =
  var x: int
  x = 3

declareInt(x) # valid
echo x

#var y = 5
#declareInt(y)
