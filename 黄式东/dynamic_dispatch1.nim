type 
  PExpr = ref object of RootObj
  PLiteral = ref object of PExpr
    x:int
  PPlusExpr = ref object of PExpr
    a,b:PExpr

method eval(e:PExpr):int =
  quit "to override" #quit作用是什么

#执行下面两句，编译能通过，执行有错误
#var PExpr1:PExpr
#echo eval(PExpr1)


method eval(e:PLiteral):int = e.x
method eval(e:PPlusExpr):int= eval(e.a)+eval(e.b)  


proc newLit(x:int):PLiteral = PLiteral(x:x)   #负责对象初始化，返回一个对象
proc newPlus(a,b:PExpr):PPlusExpr=PPlusExpr(a:a,b:b)

echo eval(newPlus(newPlus(newLit(1),newLit(2)),newLit(4)))