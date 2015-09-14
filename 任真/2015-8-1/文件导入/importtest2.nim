discard """

import importtest except addtest       #导入importtest模块,除了addtest过程

echo stringtest(str)
echo addtest(a,b)              #Error: undeclared identifier: 'addtest'

"""

discard """

#from importtest import a,b,addtest,c     #无法导入一个模块中的非输出符号,此处c是importtest模块中的非输出符号 

from importtest import a,b,addtest

echo addtest(a,b)
#echo str                                 #没有导入str,这里不能使用
#echo c

"""

discard """

from importtest import nil

echo importtest.a                         #必须使用模块名作为前缀
echo importtest.addtest(importtest.a,importtest.b)
echo importtest.c                         #即使用模块名为前缀也无法访问一个模块中的非输出符号

"""


discard """
 
from importtest as it import nil               #当使用别名时,只能用别名调用模块中的标识符,原模块名不能再使用

echo it.a
echo it.addtest(it.a,it.b)

"""

discard """

include importtest                        #导入整个文件的内容,这样无法使信息隐藏

echo addtest(a,b)
echo stringtest(str)
echo c
echo subtest(c,d)

"""

##导入文件只能导入当前目录以及其子目录下的文件



