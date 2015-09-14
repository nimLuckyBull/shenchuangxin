type
  Thing = ref object of RootObj
  Unit = ref object of Thing
     x:int

method collide(a,b:Thing){.inline.}=
  quit "to overide"


method collide(a:Thing,b:Unit){.inline.}=
  echo "1"

method collide(a:Unit,b:Thing){.inline.}=
  echo "2"

var a,b:Unit
new a #把两个new语句注释调，也可以运行，但是没有输出结果
new b
collide(a,b)  #输出是2，说明调用的是第二个函数，因为对参数解析时，按照至左至右的规律
