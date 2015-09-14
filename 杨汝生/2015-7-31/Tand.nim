#判断 and 逻辑运算符 后面表达式是否执行

var n=0

proc Tand(): bool =
  inc(n)
  return true

if false and Tand() :
  echo ""

echo n