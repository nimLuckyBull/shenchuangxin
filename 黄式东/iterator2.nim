proc countup(a,b:int):int =
  var res=a
  while res<=b:
    echo ($res)
    inc(res)

proc countup(a,b:int):int =
  var res=a
  while res<=b:
    return res  #��������Ҫ��return����������������䣬������Ϊ����return����
    inc(res)

##������õ������ķ�ʽ��ô�Ϳ�������������
iterator countup(a,b:int):int=
   var res=a
   while res<b
   yield res
   inc(res)