type 
  PExpr = ref object of RootObj
  PLiteral = ref object of PExpr
    x:int
  PPlusExpr = ref object of PExpr
    a,b:PExpr

method eval(e:PExpr):int =
  quit "to override" #quit������ʲô

#ִ���������䣬������ͨ����ִ���д���
#var PExpr1:PExpr
#echo eval(PExpr1)


method eval(e:PLiteral):int = e.x
method eval(e:PPlusExpr):int= eval(e.a)+eval(e.b)  


proc newLit(x:int):PLiteral = PLiteral(x:x)   #��������ʼ��������һ������
proc newPlus(a,b:PExpr):PPlusExpr=PPlusExpr(a:a,b:b)

echo eval(newPlus(newPlus(newLit(1),newLit(2)),newLit(4)))