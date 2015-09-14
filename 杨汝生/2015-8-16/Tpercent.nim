discard """
echo ((-8)+%3)
echo (-3<=5)
echo (-3<=%5)    #false   进行无符号数比较，负数的最高位为1。
"""

discard """
var  
    uVar1:uint8 = 128'u8
    uVar2:uint8 = 127        #error  -12
    uVar3:uint8

proc `+%` *(x, y: uint8): uint8 {.magic: "AddU", noSideEffect.}              #运算符 +% 重载。无符号数不能相加，现在重载了+% 使得其能够相加。

#proc `+%` *(x, y: uint8): uint8 =
  #result = uint8(int(x) + int(y))

uVar3 = uVar1 +% uVar2
echo int(uVar3)
echo uVar3
echo int(0b10000001)
#echo  `+%`(uVar1,uVar2)
#system. +%(uVar1,uVar2)     #error
"""

discard """
var                                                     #有符号整形用 +% 相加两个确定字节的整形，表示正负数的最高位会用到，次高位能够进位到最高位，最高位还是标识正负数。
  ibVar4:int8 = 127                                     #如果用 + 相加两个确定字节的整形，次高位产生进位时，会编译出错。
  ibVar5:int8

#ibVar5 = ibVar4 + ibVar4       
#Error: unhandled exception: over- or underflow [OverflowError]
#Error: execution of an external program failed

ibVar5 = ibVar4 +% 1
echo ibVar5      #-128

#var uVar6:uint8 = 128
#echo int8(uVar6)
#Error: unhandled exception: value out of range: 128 [RangeError]
#Error: execution of an external program failed
"""

