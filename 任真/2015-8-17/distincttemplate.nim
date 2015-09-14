template additive(typ: typedesc): stmt =
  proc `+` *(x, y: typ): typ {.borrow.}
  proc `-` *(x, y: typ): typ {.borrow.}
  
  # unary operators:
  proc `+` *(x: typ): typ {.borrow.}
  proc `-` *(x: typ): typ {.borrow.}

template multiplicative(typ, base: typedesc): stmt =
  #proc `*` *(x,y:typ): typ {.borrow.}       #允许这样定义，但没有实际意义
  proc `*` *(x: typ, y: base): typ {.borrow.}
  proc `*` *(x: base, y: typ): typ {.borrow.}
  proc `div` *(x: typ, y: base): typ {.borrow.}
  proc `mod` *(x: typ, y: base): typ {.borrow.}

template comparable(typ: typedesc): stmt =
  proc `<` * (x, y: typ): bool {.borrow.}
  proc `<=` * (x, y: typ): bool {.borrow.}
  proc `==` * (x, y: typ): bool {.borrow.}

template defineCurrency(typ, base: expr): stmt =
  type
    typ* = distinct base
  additive(typ)
  multiplicative(typ, base)
  comparable(typ)

defineCurrency(Dollar, int)
defineCurrency(Euro, int)
