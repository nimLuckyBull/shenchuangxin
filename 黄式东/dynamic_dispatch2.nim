type
  Thing = ref object of RootObj
  Unit = ref object of Thing
     x:int

method collide(a,b:Thing){.inline.}=
  quit "to overide"


method collide(a:Thing,b:Unit){.inline.}=
  echo "1"

method collide(a:Unit,b:Thing){.inline.}=
  echo "2"

var a,b:Unit
new a #������new���ע�͵���Ҳ�������У�����û��������
new b
collide(a,b)  #�����2��˵�����õ��ǵڶ�����������Ϊ�Բ�������ʱ�������������ҵĹ���
