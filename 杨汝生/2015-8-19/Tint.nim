###OS:64-bit ###

echo sizeof(int)                             #int类型所占字节数取决于操作系统的位数，在32位操作系统下，int占4个字节；64位下占8个字节。

var
  vari8:int8
  varint:int
  vari64:int64

varint = 0x7fff_ffff
echo varint

varint = 0x7fff_ffff_f                     

#varint = 2147483648                          # Error: type mismatch: got (int64) but expected 'int'

varint = 0x7fff_ffff_ffff_fff8_f 
echo varint                                  # -113 == fff_ffff_ffff_fff8_f

varint = 0x7fff_ffff_ffff_fff7_f
echo varint                                  #-129 == fff_ffff_ffff_fff7_f
