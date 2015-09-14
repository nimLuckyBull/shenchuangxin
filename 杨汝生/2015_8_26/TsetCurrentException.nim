import strutils

var CError:ref ValueError
new (CError)
CError.msg = "this Error is invalid integer "

try:
  var x = parseInt("n")
 
except ValueError:
  setCurrentException(CError)
  echo (getCurrentExceptionMsg())