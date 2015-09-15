proc unsafeCall() =
  raise newException(EIO, "Foo")

proc safeCall(): bool {.raises: [].} =
  try:                                  #如果没有try语句,编译器将拒绝编译
    unsafeCall()
    result = true
  except:
    result = false



proc safeCall2():bool {.raises:[].}=
  
  defer:echo "hi"

  except:
    result=false
  unsafeCall()
  result=true

#effectsystem.nim(2, 22) Warning: use IOError instead; EIO is deprecated [Deprecated]
#effectsystem.nim(15, 3) Warning: use an explicit 'try'; standalone 'except' is deprecated [Deprecated]

  

