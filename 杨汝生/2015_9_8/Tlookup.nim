# module 'Tlookup'

type
  Lev = enum
    levA, levB

var abclev = levB

template tstLev(abclev: Lev) =
  bind Tlookup.abclev
  echo abclev, " ", tlookup.abclev                     #在Windows下，文件名首字母使用大写时一定要注意，Windows 把首字母为大写的看作是小写。
                                                       #在Nim程序中使用模块名时要用小写。
tstLev(levA)
# produces: 'levA levA'
