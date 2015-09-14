{.compile: "hexout.c".}

echo cpuEndian      #小端序存储

proc hexout(buf:ptr char,len:int) {.importc: "HexOutput".}

var ch:char= 'a'

hexout(addr(ch),1)

var vari8:int8=0xffff_ffff_ffff_ffff_8                #此处的8算半个字节,是否其高位补零,还是低位补零
hexout((cast[ptr char](addr(vari8))),1)


var vari16:int16=0xffff_ffff_ffff_ffff
hexout((cast[ptr char](addr(vari16))),2)

vari16=0xffff_ffff_ffff_ffff_001
echo vari16 
hexout((cast[ptr char](addr(vari16))),2)


vari16=0xffff_ffff_ffff_ffff_0fff_ff'i16
echo vari16
hexout((cast[ptr char](addr(vari16))),2)


var vari32:int32=0xffff_ffff_ffff_ffff_7fff   #????
echo vari32
hexout((cast[ptr char](addr(vari32))),4)

vari32=0xffff_ffff_ffff_ffff_0fff
echo vari32
hexout((cast[ptr char](addr(vari32))),4)



#需要使用什么样类型的数,强烈建议加上相应的类型后缀
#(此处针对的是64位机)
#一个没有类型后缀的整型数是int类型。int类型的大小依赖于平台并且与一个指针有相同的大小
#使用十六进制进行赋值时，是有越界检查的;越界检查分两步:字面值检查和类型检查
#0x____为8字节以下且不带类型后缀时(默认为int类型)，高位自动补零,该值赋给相应的类型则根据该类型进行越界检查;

#当0x____为8字节以及以上且不带类型后缀时,从左往右扫描该数,从右往左截取8个字节的数,若在扫描的过程中出现二进制中有0的字节出现在要截取的8字节之外则出错。
#若这8个字节中二进制没有0,即全为F,则值为-1。  
#若有字节中二进制含有0,则从该字节开始,讨论该字节的高位为0或1:
#若高位为0  若从该字节的前一个字节到尾的数(记为a)已经超过该类型的范围则错误;否则从出现0的字节往前截取:类型字节数(b)-a;截取之后再做类型检查,是否越界  
#若高位为1  若从该字节到尾的数(记为a)已经超过该类型的范围则错误;否则从出现0的字节往前截取:类型字节数(b)-a;截取之后再做类型检查,是否越界

#带有类型后缀时，从右边开始截取相应字节的有符号数。
