#判断当debug 为false 时是否进行 & $tjudge() 运算。
const
  #debug = true
  debug = false

template log(msg: string) =
  if debug: stdout.writeln(msg)

var n = 0
proc tjudge(): bool =
  inc(n)
  return true

var
  x = 4
log("x has the value: " & $tjudge())

echo n