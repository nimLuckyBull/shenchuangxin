type
  Direction = enum
    north, east, south, west
  BlinkLights = enum
    off, on, slowBlink, mediumBlink, fastBlink
  LevelSetting = array[north..west, BlinkLights]
var
  level: LevelSetting
level[north] = on
level[south] = slowBlink
level[east] = fastBlink
echo repr(level)  # --> [on, fastBlink, slowBlink, off]#Ϊʲôlevel[west]=off ?ö�����͸�ֵʱ����θ�ֵ����
echo low(level)   # --> north
echo len(level)   # --> 4
echo high(level)  # --> west