
type
  myexceptionError = object of Exception

var e: ref myexceptionError
new(e)

proc Rexception() =
  raise e

try:
  Rexception()

except myexceptionError:
  echo "raise myexceptionError"