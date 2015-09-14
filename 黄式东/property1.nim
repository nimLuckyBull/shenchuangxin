type
  Socket* = ref object of RootObj
    FHost:int


#下面函数相当于初始化对象的属性值
#proc `host=`*(s:var Socket,value:int){.inline.}=  #这个符号`host=`表示什么意思？？有什么作用
#  s.FHost=value"""

#与上面那个函数效果是一样的
proc `host=`*(s:Socket,value:int){.inline.}=  #这个符号`host=`表示什么意思？？有什么作用
  s.FHost=value

#下面函数相当于获取对象的属性值
proc host*(s:Socket):int{.inline.}=
  s.FHost  

var s:Socket
new s 
#s.host=34  #正确，但是为什么调用的不是第二个host函数？？难道通过=号来调用一个函数？
#host(s,14)  #出错
#host(s)     #出错


echo host(s)#调用第二个函数，并且对象的初始值为0
#s.host(5) #调用出错
s.host=5
echo host(s)