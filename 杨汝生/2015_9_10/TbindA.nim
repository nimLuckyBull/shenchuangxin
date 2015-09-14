# Module A
var
  lastId = 0x7E#'i8

template genId*: expr = # expr =
  inc(lastId)
  2*lastId