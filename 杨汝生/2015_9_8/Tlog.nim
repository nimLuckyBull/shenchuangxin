##判断当debug 为false 时,过程和模板中的 & $tjudge() 是否执行。

const
  debug1 = true
  #debug1 = false

proc log1(msg: string) {.inline.} =
  if debug1: stdout.writeln(msg)

var m = 0
proc tjudge1(): bool =
  inc(m)
  return true

var
  x = 4
log1("x has the value: " & $(tjudge1()))
echo "m = ",m



const
  debug2 = true
  #debug2 = false

template log2(msg: string) =
  if debug2: stdout.writeln(msg)

var n = 0
proc tjudge(): bool =
  inc(n)
  return true
  
var
  y = 4
log2("y has the value: " & $(tjudge()))
echo "n = ",n