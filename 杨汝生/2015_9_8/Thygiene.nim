template newException*(exceptn: typedesc, message: string): expr =
  var
    e: ref exceptn  # e is implicitly gensym'ed here
  new(e)
  e.msg = message
  e

# so this works:
let e = "message"
raise newException(EIO, e)