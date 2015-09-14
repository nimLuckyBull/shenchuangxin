import strutils

proc sameIdentifier(a, b: string): bool =
  a[0] == b[0] and a.replace("_", "").toLower == b.replace("_", "").toLower

echo sameIdentifier("Dd_d","d_d_d")
echo sameIdentifier("dd_d","d_d_d")


var name:string = "yrs"

echo n_A_me
#echo Name                #首字母区分大小写，标识符开头和结尾不能是下划线，字母中间可以有单个下划线，不能有两个连着的下划线。


proc hello():void =
  echo "hello"

h_El_lo()
#Hello()                  #首字母区分大小写，


type
  people = ref object of RootObj
    age*:int

var student = pE_ople(age:18)
echo s_T_udent.age
#echo S_tudent.age


#两个标识符（标识常量，变量，类型，属性，对象，过程，函数等）相同，意味着标识符首字母相同（区分大小写），标识符除了首字符外，其余不区分大小写，并且可以加单个下划线，但不能在首尾加下划线。