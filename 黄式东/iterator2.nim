proc countup(a,b:int):int =
  var res=a
  while res<=b:
    echo ($res)
    inc(res)

proc countup(a,b:int):int =
  var res=a
  while res<=b:
    return res  #编译会出错，要求return语句后不能再有其它语句，过程认为遇到return结束
    inc(res)

##如果采用迭代器的方式那么就可以正常工作了
iterator countup(a,b:int):int=
   var res=a
   while res<b
   yield res
   inc(res)