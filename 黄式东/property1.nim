type
  Socket* = ref object of RootObj
    FHost:int


#���溯���൱�ڳ�ʼ�����������ֵ
#proc `host=`*(s:var Socket,value:int){.inline.}=  #�������`host=`��ʾʲô��˼������ʲô����
#  s.FHost=value"""

#�������Ǹ�����Ч����һ����
proc `host=`*(s:Socket,value:int){.inline.}=  #�������`host=`��ʾʲô��˼������ʲô����
  s.FHost=value

#���溯���൱�ڻ�ȡ���������ֵ
proc host*(s:Socket):int{.inline.}=
  s.FHost  

var s:Socket
new s 
#s.host=34  #��ȷ������Ϊʲô���õĲ��ǵڶ���host���������ѵ�ͨ��=��������һ��������
#host(s,14)  #����
#host(s)     #����


echo host(s)#���õڶ������������Ҷ���ĳ�ʼֵΪ0
#s.host(5) #���ó���
s.host=5
echo host(s)