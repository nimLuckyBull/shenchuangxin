template withFile(f: expr, filename: string, mode: FileMode,
                  body: stmt): stmt {.immediate.} =
  let fn = filename
  var f: File
  if open(f, fn, mode):
    try:
      body
    finally:
      close(f)
  else:
    quit("cannot open: " & fn)

withFile(wtxt, "ttempl3.txt", fmWrite):
  wtxt.writeln("line 1")
  wtxt.writeln("line 2")

withFile(rtxt, "ttempl3.txt", fmRead):
  echo rtxt.readAll()
