import os

let
  path="usr/local/nimc.html"
  (dir,name,ext) = splitFile(path)#����ʹ�ã������ܰ�tuple�е�ÿ��ֵ�ֱ𸳸���������
  baddir,badname,badext = splitFile(path) #�����Ļ�����splieFile()���̵ķ���ֵ�ֱ𸳸���baddir,badname,badext����������
echo dir
echo name
echo ext

echo baddir
echo badname
echo badext