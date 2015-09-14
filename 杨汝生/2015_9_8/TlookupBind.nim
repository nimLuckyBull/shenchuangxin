# module 'TlookupBind'

type
  Lev = enum
    levA, levB

var abclev = levB

template tstLev(abclev: Lev) =
  bind tlookupBind.abclev
  echo abclev, " ", tlookupBind.abclev 

tstLev(levA)
# produces: 'levA levA'

echo tlookupBind.abclev 