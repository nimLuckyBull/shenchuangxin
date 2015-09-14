##枚举名和类型是否可以相同说明如下:

##在同一个模块中,相同的枚举项不可以出现在多个枚举类型中,即使定义在多个type中也不允许出现相同的枚举项:

discard """

type
  PureColor=enum
    pcRed,pcOrange,pcYellow,pcGreen,pcBlue,pcPurple
  MixColor=enum
    mcRed,pcYellow

type
  Color=enum
    cOrange,cBlue,pcPurple

"""

##从其他模块导入,外模块中可以出现与当前模块相同的枚举类型以及枚举项

import enumimport

type
  PureColor=enum
    pcRed,pcOrange,pcYellow,pcGreen,pcBlue,pcPurple

##当使用当前模块以及导入模块中相同的枚举类型时,直接屏蔽外模块中的此种枚举类型,使用当前模块中的枚举类型
var pcDemo:PureColor=pcRed
echo ord(pcDemo)
#var pcDemo2:PureColor=Red         #Error: type mismatch: got (PureColor) but expected 'PureColor'
#因为当前模块中PureColor枚举类型中并没有Red枚举项,所以出错

var pcDemo3=pcRed          #此处并没有强制pcDemo3的枚举类型,自动调用当前模块中的枚举项
var pcDemo4=Red            #此处并没有强制pcDemo4的枚举类型,自动匹配合适的枚举类型中的枚举项

var pcDemo5:DirDemo=ddWest   #外部模块与当前模块中的枚举类型不会产生冲突时,可以随意使用
echo ord(pcDemo5)








