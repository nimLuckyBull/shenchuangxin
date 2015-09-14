discard """

上午我说的有问题,测试后发现带有{. noSideEffect .}编译指示的过程:
1.不能在过程中直接输出
2.不能在过程中改变参数的值,但可以操作参数外的其他变量

"""





proc sum(x, y: int): int {. noSideEffect .} =
  x + y

proc minus(x, y: int): int {. noSideEffect .} =
  var i,j:int=5
  #y=i+j    #Error: 'y' cannot be assigned to     可以操作参数外的其他变量,但不能改变参数的值
  i+y

proc test1(x,y:int):int{.noSideEffect.}=
  #echo x                #Error: 'test1' can have side effects  不能直接输出
  result=x               #可以用结果变量输出

echo sum(2,3)
echo minus(3,4)
echo test1(4,5)
