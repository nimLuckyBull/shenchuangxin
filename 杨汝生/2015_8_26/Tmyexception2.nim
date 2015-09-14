
type
  myexceptionError = object of Exception

var e: ref myexceptionError
new(e)
e.msg = "nnnn息"

proc tdiv(a,b:int):int = 
  type
    myerror = object of Exception
  var e: ref myerror
  new(e)
  e.msg = "自己的异常信息"

  if b==0:
    raise e
  else:
    result = a div b
echo tdiv(10,0) 

proc Rexception() =
  raise e

try:
  Rexception()

except myexceptionError:
  echo "raise myexceptionError"
