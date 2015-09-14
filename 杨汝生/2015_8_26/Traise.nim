var
  e: ref OSError
new(e)
e.msg = "the request to the OS failed"
raise e

raise newException(OSError, "the request to the OS failed")





