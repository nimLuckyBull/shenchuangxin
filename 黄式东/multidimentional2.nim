type
  Direction = enum
    north, east, south, west
  BlinkLights = enum
    off, on, slowBlink, mediumBlink, fastBlink
  LevelSetting = array[north..west, BlinkLights]
type
  LightTower = array[1..10, LevelSetting]
  LightTower = array[1..10, array[north..west, BlinkLights]] #另外一种定义多维数组的方式
var
  tower: LightTower
  meiju: Direction
tower[1][north] = slowBlink
tower[1][east] = mediumBlink
#meiju = north #编译通过
#meiju = 1 #类型不匹配，不能进行赋值
#meiju = "hello" #类型不匹配，不能进行赋值
echo ($meiju & "  here")
echo len(tower)     # --> 10
echo len(tower[1])  # --> 4，此处表示的是tower[1]这个数组具有四个元素。类似于C语言中的二维数组 
echo repr(tower)    # --> [[slowBlink, mediumBlink, ...more output..，此处将会输出40个元素，4个元素一组。
# The following lines don't compile due to type mismatch errors
#tower[north][east] = on #类型不匹配
#tower[0][1] = on #tower的下标从1开始的，所以编译出错
#tower[1][1] = on #编译出错，数组的第二个维度下标必须是枚举类型里面的值
#tower[1][west] = on #编译通过
#tower[1][west] = 2 #编译出错，不能把整数2赋给tower中的某个元素