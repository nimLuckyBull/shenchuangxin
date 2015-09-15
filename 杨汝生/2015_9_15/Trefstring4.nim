
type
  mystring = ref string

var 
  var1 = "yrs"
  var2 = "abc"
  refvar1:mystring
  refvar2:mystring

echo repr(var1)
echo repr(var2)

new refvar1
refvar2 = new(string)          #这种实例化的本质也是通过 new 一个引用对象。

refvar1 = cast[mystring](addr(var1))
echo refvar1[0]," ",refvar1[1]," ",refvar1[2]
echo repr(refvar1)

refvar1[0] = 'a'                       
var1[1] = 'b'
echo repr(var1)
echo repr(refvar1)

var1 = var2
echo repr(var1)                   #0x7f6139573118"abc"
echo repr(refvar1)                #ref 0x624dd8 --> 0x7f6139573118"abc"          refvar1 是指向变量var1的，其值是var1的地址，不是实际对象的地址。



