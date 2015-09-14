
template typedef(name: expr, typ: typedesc) {.immediate.} =
  type
    `T name`* {.inject.} = typ
    `P name`* {.inject.} = ref `T name`

typedef(myint, int)

var x: Tmyint                         #Tmyint 、Pmyint 是 `T name` 、`P name` 中 T、P 与参数myint 的结合。
var y: Pmyint 
