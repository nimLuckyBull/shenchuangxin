discard """
比较运算符可以用于枚举类型。
为了更好的与其他编程语言的接口，枚举类型的域可以指定一个明确的序数值。然而，序数值必须是升序排列。一个域的序数值没有明确给出会被赋值为前一个域序数值+1。
一个明确的枚举类型可以不连续,然而，它们不再是一个序数类型，因此不可能使用这些枚举作为一个数组的索引类型。过程inc，dec，succ和pred对于它们是不可用的。
对于枚举编译器支持内置的字符串解析操作（注：stringify()用于从一个对象解析出字符串）。stringify()解析的结果可以通过显示的给出字符串值使用控制：

"""




var  
   i:int=5
   ch:char='h'

type
  myEnum=enum
    a='a',b="d",c=1111
    #a,d,f
    #2,4,49
    str1="abc",str2="mno",str3="xyz" #正确的
    #str1:string="abc",str2:string="mno",str3:string="xyz"#此种赋值错误
echo myEnum.str2
echo pred(myEnum.str2)
echo "=====>",ord(myEnum.str2)
inc(i,5)
echo i
echo succ(ch)
echo myEnum.c
#echo pred(myEnum.b)#如果元素是整形和字符型，返回的b元素值的前一个值 
#元素是字符串类型，返回的是枚举类型中前一个元素的值 

discard """
若a=2时,echo pred(myEnum.b)将出现错误
ordinary.nim(13, 10) Error: internal error: no symbol for ordinal value: 3
No stack traceback available
To create a stacktrace, rerun compilation with ./koch temp c <file>
"""
