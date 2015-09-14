##集合的基类型只能是序数类型
type
  enumtest=enum
    a,b,c,d
  settype = set[enumtest]
  set2 = set[int16]                  #集合中的整型只能是int8与int16;若使用int32，int64会超出值范围
  set3=set[char]
var 
   s:set2
s={int16(-32768)..int16(32767)}     #整型默认是int,int16进行强制类型转换
echo card(s)
#echo (s[0]==1)
echo (1 in s)
#echo (int)


