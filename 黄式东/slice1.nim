var
  a = "Nim is a progamming language"
  b = "Slices are useless." 

#  xyz[a..b]�ͱ�ʾһ����Ƭ
echo a[7..12] # --> 'a prog'
#b[11..-2] = "useful" #�̳��������������Ѿ�ִ�в����ˣ���-�����뻻�ɡ�^��
#b[11..^2] = "useful"
b[0..^2] = "useful"
echo b  
b = "Slices are useless." 
b[1..^2] = "useful"
echo b
b = "Slices are useless." 
b[^2..^3] = "Useful"
echo b
b = "Slices are useless." 
b[^2..^6] = "Xseful"
echo b 
b = "Slices are useless." 
b[^2..10] = "Xseful7891011"
echo b 
b = "Slices are useless." 
b[^2..0] = "Xseful7891011"
echo b 
b = "Slices are useless." 
b[^2..15] = "Xseful7891011"#���ʱ����벻�����
echo b 
b = "Slices are useless." 
b[^2..150] = "Xseful7891011"#���ʱ���������
echo b 
b = "Slices are useless." 
b[^2..^1000] = "Xseful7891011"
echo b 