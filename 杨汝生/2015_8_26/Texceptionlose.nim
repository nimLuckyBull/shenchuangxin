
try:
  try:
    raise newException(OSError, "the first request to the OS failed")
  finally:
    raise newException(OSError, "the second request to the OS failed")

except:
  echo getCurrentExceptionMsg()



