var 
  str*:string="hello"
  #a,b*:int=5             #这样定义,只是把b定义为了出口变量,a不是
  a*,b* :int=5            #true
  c,d:float=5.5

proc addtest*(a,b:int):int=
  result=a+b

proc stringtest*(s:string):string=
  result = s & "world"

proc subtest*(c,d:float):float=
  result=c-d

echo subtest(c,d)
