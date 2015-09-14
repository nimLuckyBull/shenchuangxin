import strutils

echo sizeof(0xffff)
echo sizeof(0x7fff_ffff)
echo sizeof(0xffff_ffff)
echo sizeof(0xffff_ffff_ffff_ffff_1)  
echo sizeof(0b1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111)


#在Nim中，对于整数(二进制、八进制、十进制、十六进制)来说，没有标明整数类型('i__)，默认为int型。注意，64位操作系统中，int为8字节存储，超过8字节时自动截取低8字节。
#32位操作系统中，int 为4字节存储，大于4字节小于8字节的数，用8字节存储，超过8字节时自动截取低4字节。
#在超过8字节的十六进制数后面加上 'i__，会截取相应的低位字节。
#也就是说十六进制整形数，如果没有标明它的类型，是没有越界检查的。



echo sizeof(0xff'i8)
#echo (0xff1'i8)                   #11.2版本， 等于-15，     11.3版本，编译错误。 bug修改

echo sizeof(0xffff_ffff_ffff_ffff_11'i8)
echo (0xffff_ffff_ffff_ffff_11'i8)


###在64位操作系统下###
var varint:int                 

varint = 2147483647
#varint = 2147483648                    # Error: type mismatch: got (int64) but expected 'int'

#varint = 0x8000_0000                    #为什么是同样的数，十进制报错，十六进制能够通过？？？？？
echo 0x8000_0000 == 2147483648 




var a : int = 65535
echo "0x",toHex(BiggestInt(a),4)
